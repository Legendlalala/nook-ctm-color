.class Lcom/example/ctm/MainActivity$ChangedListener$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/ctm/MainActivity$ChangedListener$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/example/ctm/MainActivity$ChangedListener$1;


# direct methods
.method constructor <init>(Lcom/example/ctm/MainActivity$ChangedListener$1;)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Lcom/example/ctm/MainActivity$ChangedListener$1$1;->this$2:Lcom/example/ctm/MainActivity$ChangedListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 547
    iget-object v0, p0, Lcom/example/ctm/MainActivity$ChangedListener$1$1;->this$2:Lcom/example/ctm/MainActivity$ChangedListener$1;

    iget-object v0, v0, Lcom/example/ctm/MainActivity$ChangedListener$1;->this$1:Lcom/example/ctm/MainActivity$ChangedListener;

    iget-object v0, v0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v0}, Lcom/example/ctm/MainActivity;->access$1800(Lcom/example/ctm/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/example/ctm/MainActivity$ChangedListener$1$1;->this$2:Lcom/example/ctm/MainActivity$ChangedListener$1;

    iget-object v1, v1, Lcom/example/ctm/MainActivity$ChangedListener$1;->this$1:Lcom/example/ctm/MainActivity$ChangedListener;

    invoke-static {v1}, Lcom/example/ctm/MainActivity$ChangedListener;->access$1700(Lcom/example/ctm/MainActivity$ChangedListener;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 548
    return-void
.end method
