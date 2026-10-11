.class public Lcom/onegravity/rteditor/RTEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/text/SpanWatcher;
.implements Lcom/onegravity/rteditor/spans/LinkSpan$LinkSpanListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onegravity/rteditor/RTEditText$SavedState;
    }
.end annotation


# instance fields
.field public J:I

.field public O:I

.field public Q:I

.field public k:Z

.field public k0:Ljava/lang/String;

.field public l:Z

.field public m:Lcom/onegravity/rteditor/utils/RTLayout;

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public q0:Ljava/lang/String;

.field public r:Lcom/onegravity/rteditor/RTEditTextListener;

.field public s:Lcom/onegravity/rteditor/api/RTMediaFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onegravity/rteditor/api/RTMediaFactory<",
            "Lcom/onegravity/rteditor/api/media/RTImage;",
            "Lcom/onegravity/rteditor/api/media/RTAudio;",
            "Lcom/onegravity/rteditor/api/media/RTVideo;",
            ">;"
        }
    .end annotation
.end field

.field public t:I

.field public t0:Landroid/text/Spannable;

.field public u:I

.field public u0:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/onegravity/rteditor/api/media/RTMedia;",
            ">;"
        }
    .end annotation
.end field

.field public v:Z

.field public v0:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/onegravity/rteditor/api/media/RTMedia;",
            ">;"
        }
    .end annotation
.end field

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/onegravity/rteditor/RTEditText;->k:Z

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/onegravity/rteditor/RTEditText;->o:Z

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/onegravity/rteditor/RTEditText;->t:I

    .line 5
    iput p1, p0, Lcom/onegravity/rteditor/RTEditText;->u:I

    .line 6
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/onegravity/rteditor/RTEditText;->u0:Ljava/util/Set;

    .line 7
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/onegravity/rteditor/RTEditText;->v0:Ljava/util/Set;

    .line 8
    invoke-virtual {p0}, Lcom/onegravity/rteditor/RTEditText;->i()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/onegravity/rteditor/RTEditText;->k:Z

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/onegravity/rteditor/RTEditText;->o:Z

    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lcom/onegravity/rteditor/RTEditText;->t:I

    .line 13
    iput p1, p0, Lcom/onegravity/rteditor/RTEditText;->u:I

    .line 14
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/onegravity/rteditor/RTEditText;->u0:Ljava/util/Set;

    .line 15
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/onegravity/rteditor/RTEditText;->v0:Ljava/util/Set;

    .line 16
    invoke-virtual {p0}, Lcom/onegravity/rteditor/RTEditText;->i()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/onegravity/rteditor/RTEditText;->k:Z

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/onegravity/rteditor/RTEditText;->o:Z

    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lcom/onegravity/rteditor/RTEditText;->t:I

    .line 21
    iput p1, p0, Lcom/onegravity/rteditor/RTEditText;->u:I

    .line 22
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/onegravity/rteditor/RTEditText;->u0:Ljava/util/Set;

    .line 23
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/onegravity/rteditor/RTEditText;->v0:Ljava/util/Set;

    .line 24
    invoke-virtual {p0}, Lcom/onegravity/rteditor/RTEditText;->i()V

    return-void
.end method

.method private getRTLayout()Lcom/onegravity/rteditor/utils/RTLayout;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/onegravity/rteditor/RTEditText;->m:Lcom/onegravity/rteditor/utils/RTLayout;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/onegravity/rteditor/RTEditText;->l:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/onegravity/rteditor/utils/RTLayout;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onegravity/rteditor/utils/RTLayout;-><init>(Landroid/text/Spanned;)V

    iput-object v0, p0, Lcom/onegravity/rteditor/RTEditText;->m:Lcom/onegravity/rteditor/utils/RTLayout;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onegravity/rteditor/RTEditText;->l:Z

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/onegravity/rteditor/RTEditText;->m:Lcom/onegravity/rteditor/utils/RTLayout;

    return-object p0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized setParagraphsAreUp2Date(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/onegravity/rteditor/RTEditText;->w:Z

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/onegravity/rteditor/RTEditText;->v:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/onegravity/rteditor/RTEditText;->y:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/onegravity/rteditor/RTEditText;->z:Z

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/onegravity/rteditor/RTEditText;->J:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lt v0, v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u200b"

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/onegravity/rteditor/RTEditText;->q0:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    iget-object v3, p0, Lcom/onegravity/rteditor/RTEditText;->r:Lcom/onegravity/rteditor/RTEditTextListener;

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/onegravity/rteditor/RTEditText;->x:Z

    if-nez v3, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/onegravity/rteditor/RTEditText;->cloneSpannable()Landroid/text/Spannable;

    move-result-object v6

    iget-object v3, p0, Lcom/onegravity/rteditor/RTEditText;->r:Lcom/onegravity/rteditor/RTEditTextListener;

    iget-object v5, p0, Lcom/onegravity/rteditor/RTEditText;->t0:Landroid/text/Spannable;

    iget v7, p0, Lcom/onegravity/rteditor/RTEditText;->O:I

    iget v8, p0, Lcom/onegravity/rteditor/RTEditText;->Q:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v10

    move-object v4, p0

    invoke-interface/range {v3 .. v10}, Lcom/onegravity/rteditor/RTEditTextListener;->onTextChanged(Lcom/onegravity/rteditor/RTEditText;Landroid/text/Spannable;Landroid/text/Spannable;IIII)V

    iput-object p1, p0, Lcom/onegravity/rteditor/RTEditText;->q0:Ljava/lang/String;

    :cond_4
    iput-boolean v2, p0, Lcom/onegravity/rteditor/RTEditText;->l:Z

    iput-boolean v2, p0, Lcom/onegravity/rteditor/RTEditText;->p:Z

    invoke-direct {p0, v1}, Lcom/onegravity/rteditor/RTEditText;->setParagraphsAreUp2Date(Z)V

    invoke-virtual {p0}, Lcom/onegravity/rteditor/RTEditText;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public applyEffect(Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "C::",
            "Lcom/onegravity/rteditor/spans/RTSpan<",
            "TV;>;>(",
            "Lcom/onegravity/rteditor/effects/Effect<",
            "TV;TC;>;TV;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/onegravity/rteditor/RTEditText;->e(Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lcom/onegravity/rteditor/RTEditText;->k0:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    iget-boolean p3, p0, Lcom/onegravity/rteditor/RTEditText;->x:Z

    if-nez p3, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p2

    iput p2, p0, Lcom/onegravity/rteditor/RTEditText;->O:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p2

    iput p2, p0, Lcom/onegravity/rteditor/RTEditText;->Q:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/onegravity/rteditor/RTEditText;->k0:Ljava/lang/String;

    iput-object p2, p0, Lcom/onegravity/rteditor/RTEditText;->q0:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/RTEditText;->cloneSpannable()Landroid/text/Spannable;

    move-result-object p2

    iput-object p2, p0, Lcom/onegravity/rteditor/RTEditText;->t0:Landroid/text/Spannable;

    :cond_1
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/onegravity/rteditor/RTEditText;->l:Z

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Lcom/onegravity/rteditor/RTEditText;->J:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public cloneSpannable()Landroid/text/Spannable;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    new-instance v0, Lcom/onegravity/rteditor/ClonedSpannableString;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-direct {v0, p0}, Lcom/onegravity/rteditor/ClonedSpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public final d()V
    .locals 4

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v2, 0x12

    invoke-interface {v0, p0, v3, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method public final e(Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "C::",
            "Lcom/onegravity/rteditor/spans/RTSpan<",
            "TV;>;>(",
            "Lcom/onegravity/rteditor/effects/Effect<",
            "TV;TC;>;TV;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/onegravity/rteditor/RTEditText;->k:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/onegravity/rteditor/RTEditText;->o:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/onegravity/rteditor/RTEditText;->n:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/onegravity/rteditor/RTEditText;->x:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onegravity/rteditor/RTEditText;->cloneSpannable()Landroid/text/Spannable;

    move-result-object v0

    :goto_0
    move-object v3, v0

    invoke-virtual {p1, p0, p2}, Lcom/onegravity/rteditor/effects/Effect;->applyToSelection(Lcom/onegravity/rteditor/RTEditText;Ljava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/onegravity/rteditor/RTEditText;->r:Lcom/onegravity/rteditor/RTEditTextListener;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/onegravity/rteditor/RTEditText;->x:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/onegravity/rteditor/RTEditText;->cloneSpannable()Landroid/text/Spannable;

    move-result-object v4

    iget-object v1, p0, Lcom/onegravity/rteditor/RTEditText;->r:Lcom/onegravity/rteditor/RTEditTextListener;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    move-object v2, p0

    invoke-interface/range {v1 .. v8}, Lcom/onegravity/rteditor/RTEditTextListener;->onTextChanged(Lcom/onegravity/rteditor/RTEditText;Landroid/text/Spannable;Landroid/text/Spannable;IIII)V

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onegravity/rteditor/RTEditText;->l:Z

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public final f()V
    .locals 1

    iget-object p0, p0, Lcom/onegravity/rteditor/RTEditText;->s:Lcom/onegravity/rteditor/api/RTMediaFactory;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The RTMediaFactory is null. Please make sure to register the editor at the RTManager before using it."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g()V
    .locals 5

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-gt v2, v1, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid selection when copy text, start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-static {v0}, Lcom/blankj/utilcode/util/ClipboardUtils;->copyText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public getParagraphs()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/onegravity/rteditor/utils/Paragraph;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/onegravity/rteditor/RTEditText;->getRTLayout()Lcom/onegravity/rteditor/utils/RTLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onegravity/rteditor/utils/RTLayout;->getParagraphs()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getParagraphsInSelection()Lcom/onegravity/rteditor/utils/Selection;
    .locals 3

    invoke-direct {p0}, Lcom/onegravity/rteditor/RTEditText;->getRTLayout()Lcom/onegravity/rteditor/utils/RTLayout;

    move-result-object v0

    new-instance v1, Lcom/onegravity/rteditor/utils/Selection;

    invoke-direct {v1, p0}, Lcom/onegravity/rteditor/utils/Selection;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v1}, Lcom/onegravity/rteditor/utils/Selection;->start()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onegravity/rteditor/utils/RTLayout;->getLineForOffset(I)I

    move-result p0

    invoke-virtual {v1}, Lcom/onegravity/rteditor/utils/Selection;->isEmpty()Z

    move-result v2

    invoke-virtual {v1}, Lcom/onegravity/rteditor/utils/Selection;->end()I

    move-result v1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/onegravity/rteditor/utils/RTLayout;->getLineForOffset(I)I

    move-result v1

    new-instance v2, Lcom/onegravity/rteditor/utils/Selection;

    invoke-virtual {v0, p0}, Lcom/onegravity/rteditor/utils/RTLayout;->getLineStart(I)I

    move-result p0

    invoke-virtual {v0, v1}, Lcom/onegravity/rteditor/utils/RTLayout;->getLineEnd(I)I

    move-result v0

    invoke-direct {v2, p0, v0}, Lcom/onegravity/rteditor/utils/Selection;-><init>(II)V

    return-object v2
.end method

.method public getRichText(Lcom/onegravity/rteditor/api/format/RTFormat;)Lcom/onegravity/rteditor/api/format/RTText;
    .locals 1

    invoke-virtual {p0}, Lcom/onegravity/rteditor/RTEditText;->f()V

    new-instance v0, Lcom/onegravity/rteditor/api/format/RTEditable;

    invoke-direct {v0, p0}, Lcom/onegravity/rteditor/api/format/RTEditable;-><init>(Lcom/onegravity/rteditor/RTEditText;)V

    iget-object p0, p0, Lcom/onegravity/rteditor/RTEditText;->s:Lcom/onegravity/rteditor/api/RTMediaFactory;

    invoke-virtual {v0, p1, p0}, Lcom/onegravity/rteditor/api/format/RTEditable;->convertTo(Lcom/onegravity/rteditor/api/format/RTFormat;Lcom/onegravity/rteditor/api/RTMediaFactory;)Lcom/onegravity/rteditor/api/format/RTText;

    move-result-object p0

    return-object p0
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onegravity/rteditor/RTEditText;->getSelection()Lcom/onegravity/rteditor/utils/Selection;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onegravity/rteditor/utils/Selection;->start()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/onegravity/rteditor/utils/Selection;->end()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/onegravity/rteditor/utils/Selection;->end()I

    move-result v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/onegravity/rteditor/utils/Selection;->start()I

    move-result v1

    invoke-virtual {p0}, Lcom/onegravity/rteditor/utils/Selection;->end()I

    move-result p0

    invoke-interface {v0, v1, p0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSelection()Lcom/onegravity/rteditor/utils/Selection;
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p0

    new-instance v1, Lcom/onegravity/rteditor/utils/Selection;

    invoke-direct {v1, v0, p0}, Lcom/onegravity/rteditor/utils/Selection;-><init>(II)V

    return-object v1
.end method

.method public getText(Lcom/onegravity/rteditor/api/format/RTFormat;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/RTEditText;->getRichText(Lcom/onegravity/rteditor/api/format/RTFormat;)Lcom/onegravity/rteditor/api/format/RTText;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onegravity/rteditor/api/format/RTText;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextWithComposing(Lcom/onegravity/rteditor/api/format/RTFormat;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/onegravity/rteditor/api/format/RTEditable;

    invoke-direct {v0, p0}, Lcom/onegravity/rteditor/api/format/RTEditable;-><init>(Lcom/onegravity/rteditor/RTEditText;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onegravity/rteditor/api/format/RTEditable;->setCleanComposing(Z)Lcom/onegravity/rteditor/api/format/RTEditable;

    move-result-object v0

    iget-object p0, p0, Lcom/onegravity/rteditor/RTEditText;->s:Lcom/onegravity/rteditor/api/RTMediaFactory;

    invoke-virtual {v0, p1, p0}, Lcom/onegravity/rteditor/api/format/RTEditable;->convertTo(Lcom/onegravity/rteditor/api/format/RTFormat;Lcom/onegravity/rteditor/api/RTMediaFactory;)Lcom/onegravity/rteditor/api/format/RTText;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onegravity/rteditor/api/format/RTText;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized h()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/onegravity/rteditor/RTEditText;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasChanged()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onegravity/rteditor/RTEditText;->p:Z

    return p0
.end method

.method public final i()V
    .locals 1

    invoke-virtual {p0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-static {}, Lcom/onegravity/rteditor/RTEditorMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method public j(Lcom/onegravity/rteditor/api/media/RTMedia;)V
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/RTEditText;->v0:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public k(Z)V
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Lcom/onegravity/rteditor/spans/MediaSpan;

    const/4 v4, 0x0

    invoke-interface {v1, v4, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/onegravity/rteditor/spans/MediaSpan;

    array-length v2, v1

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v3, v1, v4

    invoke-virtual {v3}, Lcom/onegravity/rteditor/spans/MediaSpan;->getMedia()Lcom/onegravity/rteditor/api/media/RTMedia;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/onegravity/rteditor/RTEditText;->u0:Ljava/util/Set;

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    iget-object v2, p0, Lcom/onegravity/rteditor/RTEditText;->v0:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/onegravity/rteditor/RTEditText;->u0:Ljava/util/Set;

    :goto_2
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onegravity/rteditor/api/media/RTMedia;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p1}, Lcom/onegravity/rteditor/api/media/RTMedia;->remove()V

    goto :goto_3

    :cond_4
    return-void
.end method

.method public l(Lcom/onegravity/rteditor/RTEditTextListener;Lcom/onegravity/rteditor/api/RTMediaFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onegravity/rteditor/RTEditTextListener;",
            "Lcom/onegravity/rteditor/api/RTMediaFactory<",
            "Lcom/onegravity/rteditor/api/media/RTImage;",
            "Lcom/onegravity/rteditor/api/media/RTAudio;",
            "Lcom/onegravity/rteditor/api/media/RTVideo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onegravity/rteditor/RTEditText;->r:Lcom/onegravity/rteditor/RTEditTextListener;

    iput-object p2, p0, Lcom/onegravity/rteditor/RTEditText;->s:Lcom/onegravity/rteditor/api/RTMediaFactory;

    return-void
.end method

.method public declared-synchronized m()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/onegravity/rteditor/RTEditText;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final n()Z
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-lt v4, v3, :cond_6

    if-gez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read clipboard text: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v5, p0, v6, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v1, v3, v4, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_0
    return v2

    :cond_6
    :goto_1
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid selection when read paste text, start="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", end="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public o()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onegravity/rteditor/RTEditText;->r:Lcom/onegravity/rteditor/RTEditTextListener;

    return-void
.end method

.method public onClick(Lcom/onegravity/rteditor/spans/LinkSpan;)V
    .locals 1

    iget-boolean v0, p0, Lcom/onegravity/rteditor/RTEditText;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onegravity/rteditor/RTEditText;->r:Lcom/onegravity/rteditor/RTEditTextListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/onegravity/rteditor/RTEditTextListener;->onClick(Lcom/onegravity/rteditor/RTEditText;Lcom/onegravity/rteditor/spans/LinkSpan;)V

    :cond_0
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-boolean p2, p0, Lcom/onegravity/rteditor/RTEditText;->k:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/onegravity/rteditor/RTEditText;->r:Lcom/onegravity/rteditor/RTEditTextListener;

    if-eqz p2, :cond_0

    invoke-interface {p2, p0, p1}, Lcom/onegravity/rteditor/RTEditTextListener;->onFocusChanged(Lcom/onegravity/rteditor/RTEditText;Z)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/onegravity/rteditor/extension/RTRichTextExtKt;->handleDeleteKey(Lcom/onegravity/rteditor/RTEditText;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/onegravity/rteditor/RTEditText$SavedState;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/onegravity/rteditor/RTEditText$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-static {p1}, Lcom/onegravity/rteditor/RTEditText$SavedState;->access$000(Lcom/onegravity/rteditor/RTEditText$SavedState;)Z

    move-result v0

    invoke-static {p1}, Lcom/onegravity/rteditor/RTEditText$SavedState;->access$100(Lcom/onegravity/rteditor/RTEditText$SavedState;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onegravity/rteditor/RTEditText;->setRichTextEditing(ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    iget-object p1, p0, Lcom/onegravity/rteditor/RTEditText;->r:Lcom/onegravity/rteditor/RTEditTextListener;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/onegravity/rteditor/RTEditTextListener;->onRestoredInstanceState(Lcom/onegravity/rteditor/RTEditText;)V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onegravity/rteditor/RTEditText;->n:Z

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iget-boolean v1, p0, Lcom/onegravity/rteditor/RTEditText;->k:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/onegravity/rteditor/api/format/RTFormat;->HTML:Lcom/onegravity/rteditor/api/format/RTFormat$Html;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/onegravity/rteditor/api/format/RTFormat;->PLAIN_TEXT:Lcom/onegravity/rteditor/api/format/RTFormat$PlainText;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/onegravity/rteditor/RTEditText;->getText(Lcom/onegravity/rteditor/api/format/RTFormat;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/onegravity/rteditor/RTEditText$SavedState;

    iget-boolean v3, p0, Lcom/onegravity/rteditor/RTEditText;->k:Z

    invoke-direct {v2, v0, v3, v1}, Lcom/onegravity/rteditor/RTEditText$SavedState;-><init>(Landroid/os/Parcelable;ZLjava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onegravity/rteditor/RTEditText;->n:Z

    return-object v2
.end method

.method public onSelectionChanged(II)V
    .locals 3

    iget v0, p0, Lcom/onegravity/rteditor/RTEditText;->t:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/onegravity/rteditor/RTEditText;->u:I

    if-eq v0, p2, :cond_3

    :cond_0
    iput p1, p0, Lcom/onegravity/rteditor/RTEditText;->t:I

    iput p2, p0, Lcom/onegravity/rteditor/RTEditText;->u:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p2, p1, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/onegravity/rteditor/RTEditText;->q:Z

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onSelectionChanged(II)V

    iget-boolean v2, p0, Lcom/onegravity/rteditor/RTEditText;->k:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/onegravity/rteditor/RTEditText;->n:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/onegravity/rteditor/RTEditText;->v:Z

    if-nez v2, :cond_2

    iput-boolean v0, p0, Lcom/onegravity/rteditor/RTEditText;->w:Z

    new-array v2, v1, [Lcom/onegravity/rteditor/effects/Effect;

    invoke-static {p0, v2}, Lcom/onegravity/rteditor/effects/Effects;->cleanupParagraphs(Lcom/onegravity/rteditor/RTEditText;[Lcom/onegravity/rteditor/effects/Effect;)V

    iput-boolean v1, p0, Lcom/onegravity/rteditor/RTEditText;->w:Z

    invoke-direct {p0, v0}, Lcom/onegravity/rteditor/RTEditText;->setParagraphsAreUp2Date(Z)V

    :cond_2
    iget-object v2, p0, Lcom/onegravity/rteditor/RTEditText;->r:Lcom/onegravity/rteditor/RTEditTextListener;

    if-eqz v2, :cond_3

    iput-boolean v0, p0, Lcom/onegravity/rteditor/RTEditText;->o:Z

    invoke-interface {v2, p0, p1, p2}, Lcom/onegravity/rteditor/RTEditTextListener;->onSelectionChanged(Lcom/onegravity/rteditor/RTEditText;II)V

    iput-boolean v1, p0, Lcom/onegravity/rteditor/RTEditText;->o:Z

    :cond_3
    return-void
.end method

.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 1

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/onegravity/rteditor/RTEditText;->p:Z

    instance-of p4, p2, Lcom/onegravity/rteditor/spans/BulletSpan;

    const-string v0, "\u200b"

    if-eqz p4, :cond_0

    iput-boolean p3, p0, Lcom/onegravity/rteditor/RTEditText;->y:Z

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    instance-of p4, p2, Lcom/onegravity/rteditor/spans/NumberSpan;

    if-eqz p4, :cond_1

    iput-boolean p3, p0, Lcom/onegravity/rteditor/RTEditText;->z:Z

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    instance-of p1, p2, Lcom/onegravity/rteditor/spans/RTSpan;

    if-eqz p1, :cond_2

    instance-of p1, p2, Landroid/text/style/ParagraphStyle;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/onegravity/rteditor/RTEditText;->setParagraphsAreUp2Date(Z)V

    :cond_2
    return-void
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onegravity/rteditor/RTEditText;->p:Z

    instance-of p1, p2, Lcom/onegravity/rteditor/spans/RTSpan;

    if-eqz p1, :cond_0

    instance-of p1, p2, Landroid/text/style/ParagraphStyle;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/onegravity/rteditor/RTEditText;->setParagraphsAreUp2Date(Z)V

    :cond_0
    return-void
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onegravity/rteditor/RTEditText;->p:Z

    instance-of p1, p2, Lcom/onegravity/rteditor/spans/BulletSpan;

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    iput-boolean p3, p0, Lcom/onegravity/rteditor/RTEditText;->y:Z

    goto :goto_0

    :cond_0
    instance-of p1, p2, Lcom/onegravity/rteditor/spans/NumberSpan;

    if-eqz p1, :cond_1

    iput-boolean p3, p0, Lcom/onegravity/rteditor/RTEditText;->z:Z

    :cond_1
    :goto_0
    instance-of p1, p2, Lcom/onegravity/rteditor/spans/RTSpan;

    if-eqz p1, :cond_2

    instance-of p1, p2, Landroid/text/style/ParagraphStyle;

    if-eqz p1, :cond_2

    invoke-direct {p0, p3}, Lcom/onegravity/rteditor/RTEditText;->setParagraphsAreUp2Date(Z)V

    :cond_2
    return-void
.end method

.method public declared-synchronized onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    monitor-enter p0

    const/4 p1, 0x1

    :try_start_0
    iput-boolean p1, p0, Lcom/onegravity/rteditor/RTEditText;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onTextContextMenuItem(I)Z
    .locals 2

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/onegravity/rteditor/RTEditText;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/onegravity/rteditor/RTEditText;->g()V

    return v0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onTextContextMenuItem(I)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1020021
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/onegravity/rteditor/RTEditText;->k:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/onegravity/rteditor/RTEditText;->q:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    :cond_1
    return-void
.end method

.method public resetHasChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onegravity/rteditor/RTEditText;->p:Z

    invoke-direct {p0, v0}, Lcom/onegravity/rteditor/RTEditText;->setParagraphsAreUp2Date(Z)V

    return-void
.end method

.method public setRichTextEditing(ZLjava/lang/String;)V
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/onegravity/rteditor/RTEditText;->f()V

    .line 9
    iget-boolean v0, p0, Lcom/onegravity/rteditor/RTEditText;->k:Z

    if-eq p1, v0, :cond_0

    .line 10
    iput-boolean p1, p0, Lcom/onegravity/rteditor/RTEditText;->k:Z

    .line 11
    iget-object v0, p0, Lcom/onegravity/rteditor/RTEditText;->r:Lcom/onegravity/rteditor/RTEditTextListener;

    if-eqz v0, :cond_0

    .line 12
    invoke-interface {v0, p0, p1}, Lcom/onegravity/rteditor/RTEditTextListener;->onRichTextEditingChanged(Lcom/onegravity/rteditor/RTEditText;Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 13
    new-instance p1, Lcom/onegravity/rteditor/api/format/RTHtml;

    sget-object v0, Lcom/onegravity/rteditor/api/format/RTFormat;->HTML:Lcom/onegravity/rteditor/api/format/RTFormat$Html;

    invoke-direct {p1, v0, p2}, Lcom/onegravity/rteditor/api/format/RTHtml;-><init>(Lcom/onegravity/rteditor/api/format/RTFormat$Html;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 14
    :cond_1
    new-instance p1, Lcom/onegravity/rteditor/api/format/RTPlainText;

    invoke-direct {p1, p2}, Lcom/onegravity/rteditor/api/format/RTPlainText;-><init>(Ljava/lang/CharSequence;)V

    .line 15
    :goto_0
    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/RTEditText;->setText(Lcom/onegravity/rteditor/api/format/RTText;)V

    return-void
.end method

.method public setRichTextEditing(ZZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/onegravity/rteditor/RTEditText;->f()V

    .line 2
    iget-boolean v0, p0, Lcom/onegravity/rteditor/RTEditText;->k:Z

    if-eq p1, v0, :cond_2

    .line 3
    iput-boolean p1, p0, Lcom/onegravity/rteditor/RTEditText;->k:Z

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 4
    sget-object p1, Lcom/onegravity/rteditor/api/format/RTFormat;->PLAIN_TEXT:Lcom/onegravity/rteditor/api/format/RTFormat$PlainText;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/onegravity/rteditor/api/format/RTFormat;->HTML:Lcom/onegravity/rteditor/api/format/RTFormat$Html;

    .line 5
    :goto_0
    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/RTEditText;->getRichText(Lcom/onegravity/rteditor/api/format/RTFormat;)Lcom/onegravity/rteditor/api/format/RTText;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/RTEditText;->setText(Lcom/onegravity/rteditor/api/format/RTText;)V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/onegravity/rteditor/RTEditText;->r:Lcom/onegravity/rteditor/RTEditTextListener;

    if-eqz p1, :cond_2

    .line 7
    iget-boolean p2, p0, Lcom/onegravity/rteditor/RTEditText;->k:Z

    invoke-interface {p1, p0, p2}, Lcom/onegravity/rteditor/RTEditTextListener;->onRichTextEditingChanged(Lcom/onegravity/rteditor/RTEditText;Z)V

    :cond_2
    return-void
.end method

.method public setText(Lcom/onegravity/rteditor/api/format/RTText;)V
    .locals 5

    invoke-virtual {p0}, Lcom/onegravity/rteditor/RTEditText;->f()V

    invoke-virtual {p1}, Lcom/onegravity/rteditor/api/format/RTText;->getFormat()Lcom/onegravity/rteditor/api/format/RTFormat;

    move-result-object v0

    instance-of v0, v0, Lcom/onegravity/rteditor/api/format/RTFormat$Html;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/onegravity/rteditor/RTEditText;->k:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/onegravity/rteditor/api/format/RTFormat;->SPANNED:Lcom/onegravity/rteditor/api/format/RTFormat$Spanned;

    iget-object v2, p0, Lcom/onegravity/rteditor/RTEditText;->s:Lcom/onegravity/rteditor/api/RTMediaFactory;

    invoke-virtual {p1, v0, v2}, Lcom/onegravity/rteditor/api/format/RTText;->convertTo(Lcom/onegravity/rteditor/api/format/RTFormat;Lcom/onegravity/rteditor/api/RTMediaFactory;)Lcom/onegravity/rteditor/api/format/RTText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onegravity/rteditor/api/format/RTText;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    sget-object v0, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-super {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-virtual {p0}, Lcom/onegravity/rteditor/RTEditText;->d()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v2, Lcom/onegravity/rteditor/spans/MediaSpan;

    invoke-interface {p1, v1, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/onegravity/rteditor/spans/MediaSpan;

    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    iget-object v4, p0, Lcom/onegravity/rteditor/RTEditText;->u0:Ljava/util/Set;

    invoke-virtual {v3}, Lcom/onegravity/rteditor/spans/MediaSpan;->getMedia()Lcom/onegravity/rteditor/api/media/RTMedia;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-array p1, v1, [Lcom/onegravity/rteditor/effects/Effect;

    invoke-static {p0, p1}, Lcom/onegravity/rteditor/effects/Effects;->cleanupParagraphs(Lcom/onegravity/rteditor/RTEditText;[Lcom/onegravity/rteditor/effects/Effect;)V

    goto :goto_2

    :cond_1
    sget-object v0, Lcom/onegravity/rteditor/api/format/RTFormat;->PLAIN_TEXT:Lcom/onegravity/rteditor/api/format/RTFormat$PlainText;

    iget-object v2, p0, Lcom/onegravity/rteditor/RTEditText;->s:Lcom/onegravity/rteditor/api/RTMediaFactory;

    invoke-virtual {p1, v0, v2}, Lcom/onegravity/rteditor/api/format/RTText;->convertTo(Lcom/onegravity/rteditor/api/format/RTFormat;Lcom/onegravity/rteditor/api/RTMediaFactory;)Lcom/onegravity/rteditor/api/format/RTText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onegravity/rteditor/api/format/RTText;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/onegravity/rteditor/api/format/RTText;->getFormat()Lcom/onegravity/rteditor/api/format/RTFormat;

    move-result-object v0

    instance-of v0, v0, Lcom/onegravity/rteditor/api/format/RTFormat$PlainText;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/onegravity/rteditor/api/format/RTText;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, ""

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_2
    invoke-virtual {p0, v1, v1}, Lcom/onegravity/rteditor/RTEditText;->onSelectionChanged(II)V

    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 0

    new-instance p2, Lcom/onegravity/rteditor/RTActionModeCallback;

    invoke-direct {p2, p1}, Lcom/onegravity/rteditor/RTActionModeCallback;-><init>(Landroid/view/ActionMode$Callback;)V

    const/4 p1, 0x1

    invoke-super {p0, p2, p1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0
.end method

.method public usesRTFormatting()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onegravity/rteditor/RTEditText;->k:Z

    return p0
.end method
