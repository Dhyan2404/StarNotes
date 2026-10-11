.class public interface abstract Lcom/sunia/calculatorv2/ink/editor/ICopyAndPaste;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static copy(Landroid/content/ClipboardManager;Lcom/sunia/calculatorv2/ink/editor/IEditor;)Z
    .locals 0

    .line 2
    check-cast p1, Lcom/sunia/HTREnginev2/q;

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/l;->a(Landroid/content/ClipboardManager;Lcom/sunia/HTREnginev2/q;)Z

    move-result p0

    return p0
.end method

.method public static copy(Ljava/util/List;Landroid/content/ClipboardManager;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/IElement;",
            ">;",
            "Landroid/content/ClipboardManager;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/l;->copy(Ljava/util/List;Landroid/content/ClipboardManager;)Z

    move-result p0

    return p0
.end method
