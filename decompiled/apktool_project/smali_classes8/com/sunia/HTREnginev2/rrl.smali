.class public final synthetic Lcom/sunia/HTREnginev2/rrl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

.field public final synthetic b:Landroidx/core/util/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/textbox/widget/RichEditor;Landroidx/core/util/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/rrl;->a:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/rrl;->b:Landroidx/core/util/Consumer;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/rrl;->a:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/rrl;->b:Landroidx/core/util/Consumer;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->b(Lcom/onyx/android/sdk/textbox/widget/RichEditor;Landroidx/core/util/Consumer;Ljava/lang/String;)V

    return-void
.end method
