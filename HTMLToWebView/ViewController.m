#import "ViewController.h"
#import "NSString+HTML.h"
@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSString *htmlString = @"&lt;html&gt;&lt;body bgcolor = '#322828'&gt;&lt;div unselectable='off' onselectstart='return false;' onmousedown='return false;'&gt;&lt;font color=\"white\"&gt;&lt;h1&gt;My First Heading&lt;/h1&gt; http://www.google.com &lt;p&gt;My first paragraph.&lt;/p&gt;&lt;/font&gt;&lt;/div&gt;&lt;/body&gt;&lt;/html&gt;";
    NSString *str = [htmlString stringByDecodingHTMLEntities];
    [webView loadHTMLString:str baseURL:nil];
}
- (void)webViewDidFinishLoad:(UIWebView *)webView1 {
    // Disable user selection
    [webView1 stringByEvaluatingJavaScriptFromString:@"document.documentElement.style.webkitUserSelect='none';"];
    // Disable callout
    [webView1 stringByEvaluatingJavaScriptFromString:@"document.documentElement.style.webkitTouchCallout='none';"];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
