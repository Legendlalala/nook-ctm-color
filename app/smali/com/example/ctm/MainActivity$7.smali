.class Lcom/example/ctm/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/ctm/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/ctm/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/ctm/MainActivity;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/example/ctm/MainActivity$7;->this$0:Lcom/example/ctm/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 373
    iget-object v1, p0, Lcom/example/ctm/MainActivity$7;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v1}, Lcom/example/ctm/MainActivity;->access$900(Lcom/example/ctm/MainActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 374
    .local v0, "progress":I
    if-gtz v0, :cond_0

    .line 375
    const/4 v0, 0x0

    .line 377
    :cond_0
    iget-object v1, p0, Lcom/example/ctm/MainActivity$7;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v1}, Lcom/example/ctm/MainActivity;->access$900(Lcom/example/ctm/MainActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v1, p0, Lcom/example/ctm/MainActivity$7;->this$0:Lcom/example/ctm/MainActivity;

    invoke-virtual {v1}, Lcom/example/ctm/MainActivity;->SaveGammaToSystem()V

    return-void
.end method
