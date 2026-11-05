.class Lcom/example/ctm/MainActivity$ChangedListener$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/ctm/MainActivity$ChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/example/ctm/MainActivity$ChangedListener;


# direct methods
.method constructor <init>(Lcom/example/ctm/MainActivity$ChangedListener;)V
    .locals 0

    .prologue
    .line 586
    iput-object p1, p0, Lcom/example/ctm/MainActivity$ChangedListener$3;->this$1:Lcom/example/ctm/MainActivity$ChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 588
    const-string v1, "CTM"

    const-string v2, "mainLayout invalidate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 590
    .local v0, "refreshStatusBarIntent":Landroid/content/Intent;
    const-string v1, "com.ntx.refresh_statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 591
    iget-object v1, p0, Lcom/example/ctm/MainActivity$ChangedListener$3;->this$1:Lcom/example/ctm/MainActivity$ChangedListener;

    iget-object v1, v1, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 592
    iget-object v1, p0, Lcom/example/ctm/MainActivity$ChangedListener$3;->this$1:Lcom/example/ctm/MainActivity$ChangedListener;

    iget-object v1, v1, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v1}, Lcom/example/ctm/MainActivity;->access$2100(Lcom/example/ctm/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 593
    return-void
.end method
