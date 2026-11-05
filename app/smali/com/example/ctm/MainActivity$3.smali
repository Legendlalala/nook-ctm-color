.class Lcom/example/ctm/MainActivity$3;
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
    .line 295
    iput-object p1, p0, Lcom/example/ctm/MainActivity$3;->this$0:Lcom/example/ctm/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 298
    iget-object v1, p0, Lcom/example/ctm/MainActivity$3;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v1}, Lcom/example/ctm/MainActivity;->access$500(Lcom/example/ctm/MainActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 299
    .local v0, "progress":I
    if-gtz v0, :cond_0

    .line 300
    const/4 v0, 0x0

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/example/ctm/MainActivity$3;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v1}, Lcom/example/ctm/MainActivity;->access$500(Lcom/example/ctm/MainActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-static {}, Lcom/example/ctm/MainActivity;->access$600()[I

    move-result-object v1

    aget v0, v1, v0

    iget-object v1, p0, Lcom/example/ctm/MainActivity$3;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v1, v0}, Lcom/example/ctm/MainActivity;->access$402(Lcom/example/ctm/MainActivity;I)I

    iget-object v1, p0, Lcom/example/ctm/MainActivity$3;->this$0:Lcom/example/ctm/MainActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_color"

    invoke-static {v1, v2, v0}, Lcom/example/ctm/SafeHelper;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
