.class Lcom/example/ctm/MainActivity$ChangedListener$2;
.super Ljava/lang/Thread;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/ctm/MainActivity$ChangedListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V
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
    .line 562
    iput-object p1, p0, Lcom/example/ctm/MainActivity$ChangedListener$2;->this$1:Lcom/example/ctm/MainActivity$ChangedListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 566
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    :try_start_1
    iget-object v1, p0, Lcom/example/ctm/MainActivity$ChangedListener$2;->this$1:Lcom/example/ctm/MainActivity$ChangedListener;

    iget-object v1, v1, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    new-instance v2, Lcom/example/ctm/MainActivity$ChangedListener$2$1;

    invoke-direct {v2, p0}, Lcom/example/ctm/MainActivity$ChangedListener$2$1;-><init>(Lcom/example/ctm/MainActivity$ChangedListener$2;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 573
    monitor-exit p0

    .line 578
    :goto_0
    return-void

    .line 573
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 575
    :catch_0
    move-exception v0

    .line 576
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
