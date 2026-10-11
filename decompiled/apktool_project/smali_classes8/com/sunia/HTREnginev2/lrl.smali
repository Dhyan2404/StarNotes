.class public final synthetic Lcom/sunia/HTREnginev2/lrl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Landroid/webkit/ValueCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/textbox/widget/RichEditor;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/lrl;->e:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/lrl;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/lrl;->g:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/lrl;->e:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/lrl;->f:Ljava/lang/String;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/lrl;->g:Landroid/webkit/ValueCallback;

    invoke-static {v0, v1, p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->h(Lcom/onyx/android/sdk/textbox/widget/RichEditor;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method
