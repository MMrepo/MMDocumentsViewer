//
//  ViewController.m
//  DocumentsViewer
//
//  Created by Mateusz on 04.05.2015.
//  Copyright (c) 2015 MateuszMalek. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *topWebView;
@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

-(void)loadDocument:(NSString*)documentName inView:(UIWebView*)webView
{
  NSString *path = [[NSBundle mainBundle] pathForResource:documentName ofType:nil];
  NSURL *url = [NSURL fileURLWithPath:path];
  NSURLRequest *request = [NSURLRequest requestWithURL:url];
  [webView loadRequest:request];
  webView.scalesPageToFit = YES;
}

- (IBAction)pdfLoadButtonPressed:(id)sender {
  [self loadDocument:@"test3.pdf" inView:self.topWebView];
}
- (IBAction)pptxLoadButtonPressed:(id)sender {
  [self loadDocument:@"10-krokow.ppt" inView:self.topWebView];
}
- (IBAction)keynoteLoadButtonPressed:(id)sender {
  [self loadDocument:@"testKey.key" inView:self.topWebView];
}

@end
