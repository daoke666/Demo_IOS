#import "SceneDelegate.h"
#import "ViewController.h"
#import "SecondViewController.h"
#import "TableViewViewController.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    
    UIWindowScene *windowScene = (UIWindowScene *)scene;
    
    //创建window
    self.window = [[UIWindow alloc] initWithWindowScene:windowScene];
    self.window.frame = windowScene.coordinateSpace.bounds;
    
    [self.window setBackgroundColor:[UIColor whiteColor]];
    
    
    /* ************************************************** */
    

    //根视图
    //ViewController * rootView = [[ViewController alloc]init];
    TableViewViewController * rootView = [[TableViewViewController alloc]init];
    
    //根控制器
    UINavigationController * nav = [[UINavigationController alloc]initWithRootViewController:rootView];
    
    self.window.rootViewController = nav;

    
    /* ************************************************* */
    
    
    /* ************************************************* */
    
    /*
    //创建Tab导航条控制器
    UITabBarController *tabControl = [[UITabBarController alloc] init];
    
    //将Tab导航条控制器设为window根控制器
    self.window.rootViewController = tabControl;
    
    UIViewController *vc1 = [[UIViewController alloc] init];
    vc1.view.backgroundColor = [UIColor redColor];
    vc1.tabBarItem.title = @"首页";
    vc1.tabBarItem.image = [UIImage imageNamed:@"tab_home_icon"];
    
    
    UIViewController *vc2 = [[UIViewController alloc] init];
    vc2.view.backgroundColor = [UIColor blueColor];
    vc2.tabBarItem.title = @"我的";
    vc1.tabBarItem.image = [UIImage imageNamed:@"tab_my_icon"];
    
    //将UIViewController加入Tab控制器中(类似Activity管理Fragment)
    tabControl.viewControllers = @[vc1, vc2];
    */
     
    /* ************************************************* */
    
    
    //显示window
    [self.window makeKeyAndVisible];
    
}

//老的Xcode版本在 Appdelegate类中didFinishLaunchingWithOptions方法中添加
-(void)initRootViewController{
    
    //更改根视图控制器
    //self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    //[self.window setBackgroundColor:[UIColor whiteColor]];
    
    //ViewController * myView = [[ViewController alloc]init];
    //MyViewController * myView = [[MyViewController alloc]init];
    
    //UINavigationController * nav = [[UINavigationController alloc]initWithRootViewController:myView];
    //self.window.rootViewController = nav;
    
    //[self.window makeKeyAndVisible];
}


- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end
