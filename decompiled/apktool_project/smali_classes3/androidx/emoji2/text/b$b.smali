.class public Landroidx/emoji2/text/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/emoji2/text/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/emoji2/text/b$c<",
        "Lcom/sunia/HTREnginev2/cun;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/sunia/HTREnginev2/cun;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Landroidx/emoji2/text/EmojiCompat$SpanFactory;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/cun;Landroidx/emoji2/text/EmojiCompat$SpanFactory;)V
    .locals 0
    .param p1    # Lcom/sunia/HTREnginev2/cun;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/text/b$b;->a:Lcom/sunia/HTREnginev2/cun;

    iput-object p2, p0, Landroidx/emoji2/text/b$b;->b:Landroidx/emoji2/text/EmojiCompat$SpanFactory;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;IILandroidx/emoji2/text/TypefaceEmojiRasterizer;)Z
    .locals 3
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p4}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->isPreferredSystemRender()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/emoji2/text/b$b;->a:Lcom/sunia/HTREnginev2/cun;

    if-nez v0, :cond_2

    new-instance v0, Lcom/sunia/HTREnginev2/cun;

    instance-of v2, p1, Landroid/text/Spannable;

    if-eqz v2, :cond_1

    check-cast p1, Landroid/text/Spannable;

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object p1, v2

    :goto_0
    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/cun;-><init>(Landroid/text/Spannable;)V

    iput-object v0, p0, Landroidx/emoji2/text/b$b;->a:Lcom/sunia/HTREnginev2/cun;

    :cond_2
    iget-object p1, p0, Landroidx/emoji2/text/b$b;->b:Landroidx/emoji2/text/EmojiCompat$SpanFactory;

    invoke-interface {p1, p4}, Landroidx/emoji2/text/EmojiCompat$SpanFactory;->createSpan(Landroidx/emoji2/text/TypefaceEmojiRasterizer;)Landroidx/emoji2/text/EmojiSpan;

    move-result-object p1

    iget-object p0, p0, Landroidx/emoji2/text/b$b;->a:Lcom/sunia/HTREnginev2/cun;

    const/16 p4, 0x21

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sunia/HTREnginev2/cun;->setSpan(Ljava/lang/Object;III)V

    return v1
.end method

.method public b()Lcom/sunia/HTREnginev2/cun;
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/text/b$b;->a:Lcom/sunia/HTREnginev2/cun;

    return-object p0
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroidx/emoji2/text/b$b;->b()Lcom/sunia/HTREnginev2/cun;

    move-result-object p0

    return-object p0
.end method
