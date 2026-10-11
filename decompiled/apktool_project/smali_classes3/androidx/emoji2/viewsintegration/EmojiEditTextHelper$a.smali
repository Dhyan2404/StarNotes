.class public Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$a;
.super Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$b;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/widget/EditText;

.field public final b:Lcom/sunia/HTREnginev2/vof;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Z)V
    .locals 1
    .param p1    # Landroid/widget/EditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$b;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$a;->a:Landroid/widget/EditText;

    new-instance v0, Lcom/sunia/HTREnginev2/vof;

    invoke-direct {v0, p1, p2}, Lcom/sunia/HTREnginev2/vof;-><init>(Landroid/widget/EditText;Z)V

    iput-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$a;->b:Lcom/sunia/HTREnginev2/vof;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-static {}, Lcom/sunia/HTREnginev2/sof;->getInstance()Landroid/text/Editable$Factory;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setEditableFactory(Landroid/text/Editable$Factory;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;
    .locals 0
    .param p1    # Landroid/text/method/KeyListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of p0, p1, Landroidx/emoji2/viewsintegration/EmojiKeyListener;

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    instance-of p0, p1, Landroid/text/method/NumberKeyListener;

    if-eqz p0, :cond_2

    return-object p1

    :cond_2
    new-instance p0, Landroidx/emoji2/viewsintegration/EmojiKeyListener;

    invoke-direct {p0, p1}, Landroidx/emoji2/viewsintegration/EmojiKeyListener;-><init>(Landroid/text/method/KeyListener;)V

    return-object p0
.end method

.method public b()Z
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$a;->b:Lcom/sunia/HTREnginev2/vof;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/vof;->d()Z

    move-result p0

    return p0
.end method

.method public c(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1    # Landroid/view/inputmethod/InputConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, Landroidx/emoji2/viewsintegration/EmojiInputConnection;

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiInputConnection;

    iget-object p0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$a;->a:Landroid/widget/EditText;

    invoke-direct {v0, p0, p1, p2}, Landroidx/emoji2/viewsintegration/EmojiInputConnection;-><init>(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    return-object v0
.end method

.method public d(I)V
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$a;->b:Lcom/sunia/HTREnginev2/vof;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/vof;->f(I)V

    return-void
.end method

.method public e(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$a;->b:Lcom/sunia/HTREnginev2/vof;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/vof;->g(Z)V

    return-void
.end method

.method public f(I)V
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$a;->b:Lcom/sunia/HTREnginev2/vof;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/vof;->h(I)V

    return-void
.end method
