.class public Lcom/onegravity/rteditor/RTManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onegravity/rteditor/RTToolbarListener;
.implements Lcom/onegravity/rteditor/RTEditTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;
    }
.end annotation


# static fields
.field public static final l:Ljava/lang/String; = "ID_01_LINK_FRAGMENT"


# instance fields
.field public a:Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;

.field public b:Z

.field public c:I

.field public d:Lcom/onegravity/rteditor/utils/Selection;

.field public final transient e:Landroid/os/Handler;

.field public transient f:Z

.field public transient g:Z

.field public final transient h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/onegravity/rteditor/RTEditText;",
            ">;"
        }
    .end annotation
.end field

.field public final transient i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/onegravity/rteditor/RTToolbar;",
            ">;"
        }
    .end annotation
.end field

.field public transient j:Lcom/onegravity/rteditor/api/RTApi;

.field public final transient k:Lcom/onegravity/rteditor/a;


# direct methods
.method public constructor <init>(Lcom/onegravity/rteditor/api/RTApi;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;->AUTOMATIC:Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;

    iput-object v0, p0, Lcom/onegravity/rteditor/RTManager;->a:Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;

    const v0, 0x7fffffff

    iput v0, p0, Lcom/onegravity/rteditor/RTManager;->c:I

    iput-object p1, p0, Lcom/onegravity/rteditor/RTManager;->j:Lcom/onegravity/rteditor/api/RTApi;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/onegravity/rteditor/RTManager;->e:Landroid/os/Handler;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/onegravity/rteditor/RTManager;->h:Ljava/util/Map;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/onegravity/rteditor/RTManager;->i:Ljava/util/Map;

    new-instance p1, Lcom/onegravity/rteditor/a;

    invoke-direct {p1}, Lcom/onegravity/rteditor/a;-><init>()V

    iput-object p1, p0, Lcom/onegravity/rteditor/RTManager;->k:Lcom/onegravity/rteditor/a;

    if-eqz p2, :cond_1

    const-string p1, "mToolbarVisibility"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;->valueOf(Ljava/lang/String;)Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;

    move-result-object p1

    iput-object p1, p0, Lcom/onegravity/rteditor/RTManager;->a:Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;

    :cond_0
    const-string p1, "mToolbarIsVisible"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/onegravity/rteditor/RTManager;->b:Z

    const-string p1, "mActiveEditor"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/onegravity/rteditor/RTManager;->c:I

    const-string p1, "mLinkSelection"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/onegravity/rteditor/utils/Selection;

    iput-object p1, p0, Lcom/onegravity/rteditor/RTManager;->d:Lcom/onegravity/rteditor/utils/Selection;

    :cond_1
    invoke-virtual {p0}, Lcom/onegravity/rteditor/RTManager;->e()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolderKt;->ensureRegister(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/onegravity/rteditor/RTManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onegravity/rteditor/RTManager;->b:Z

    return p0
.end method

.method public static synthetic b(Lcom/onegravity/rteditor/RTManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onegravity/rteditor/RTManager;->c()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/onegravity/rteditor/RTManager;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onegravity/rteditor/RTManager;->j()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onegravity/rteditor/RTManager;->g:Z

    iput-boolean v0, p0, Lcom/onegravity/rteditor/RTManager;->f:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d()Lcom/onegravity/rteditor/RTEditText;
    .locals 2

    iget-object p0, p0, Lcom/onegravity/rteditor/RTManager;->h:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final e()Lorg/greenrobot/eventbus/EventBus;
    .locals 0

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    return-object p0
.end method

.method public final f(Lcom/onegravity/rteditor/RTEditText;Lcom/onegravity/rteditor/spans/RTSpan;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onegravity/rteditor/RTEditText;",
            "Lcom/onegravity/rteditor/spans/RTSpan<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, p2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p2

    if-ltz v1, :cond_0

    if-ltz p2, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt p2, v2, :cond_0

    invoke-interface {v0, v1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/onegravity/rteditor/utils/Selection;

    invoke-direct {v0, v1, p2}, Lcom/onegravity/rteditor/utils/Selection;-><init>(II)V

    iput-object v0, p0, Lcom/onegravity/rteditor/RTManager;->d:Lcom/onegravity/rteditor/utils/Selection;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onegravity/rteditor/RTEditText;->getSelection()Lcom/onegravity/rteditor/utils/Selection;

    move-result-object p1

    iput-object p1, p0, Lcom/onegravity/rteditor/RTManager;->d:Lcom/onegravity/rteditor/utils/Selection;

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final g(Lcom/onegravity/rteditor/RTEditText;Lcom/onegravity/rteditor/api/media/RTImage;)V
    .locals 11

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/onegravity/rteditor/utils/Selection;

    invoke-direct {v0, p1}, Lcom/onegravity/rteditor/utils/Selection;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onegravity/rteditor/utils/Selection;->start()I

    move-result v2

    const-string v3, "\ufffc"

    invoke-interface {v1, v2, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p1}, Lcom/onegravity/rteditor/RTEditText;->cloneSpannable()Landroid/text/Spannable;

    move-result-object v4

    new-instance v3, Lcom/onegravity/rteditor/spans/ImageSpan;

    const/4 v5, 0x0

    invoke-direct {v3, p2, v5}, Lcom/onegravity/rteditor/spans/ImageSpan;-><init>(Lcom/onegravity/rteditor/api/media/RTImage;Z)V

    invoke-virtual {v0}, Lcom/onegravity/rteditor/utils/Selection;->start()I

    move-result v5

    invoke-virtual {v0}, Lcom/onegravity/rteditor/utils/Selection;->end()I

    move-result v6

    add-int/2addr v6, v2

    const/16 v7, 0x21

    invoke-interface {v1, v3, v5, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v9

    invoke-virtual {p1, p2}, Lcom/onegravity/rteditor/RTEditText;->j(Lcom/onegravity/rteditor/api/media/RTMedia;)V

    invoke-virtual {p1}, Lcom/onegravity/rteditor/RTEditText;->cloneSpannable()Landroid/text/Spannable;

    move-result-object v5

    iget-object p2, p0, Lcom/onegravity/rteditor/RTManager;->k:Lcom/onegravity/rteditor/a;

    new-instance v10, Lcom/onegravity/rteditor/a$b;

    invoke-virtual {v0}, Lcom/onegravity/rteditor/utils/Selection;->start()I

    move-result v6

    invoke-virtual {v0}, Lcom/onegravity/rteditor/utils/Selection;->end()I

    move-result v7

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/onegravity/rteditor/a$b;-><init>(Landroid/text/Spannable;Landroid/text/Spannable;IIII)V

    invoke-virtual {p2, p1, v10}, Lcom/onegravity/rteditor/a;->a(Lcom/onegravity/rteditor/RTEditText;Lcom/onegravity/rteditor/a$a;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {v0}, Lcom/onegravity/rteditor/utils/Selection;->start()I

    move-result p1

    invoke-virtual {v0}, Lcom/onegravity/rteditor/utils/Selection;->end()I

    move-result p2

    add-int/2addr p2, v2

    invoke-interface {v1, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    iget-object p0, p0, Lcom/onegravity/rteditor/RTManager;->j:Lcom/onegravity/rteditor/api/RTApi;

    sget p1, Lcom/onegravity/rteditor/R$string;->rte_add_image_error:I

    invoke-virtual {p0, p1, v2}, Lcom/onegravity/rteditor/api/RTApi;->makeText(II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final h(Lcom/onegravity/rteditor/utils/Constants$MediaAction;)V
    .locals 3

    invoke-virtual {p0}, Lcom/onegravity/rteditor/RTManager;->d()Lcom/onegravity/rteditor/RTEditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/onegravity/rteditor/RTManager;->j:Lcom/onegravity/rteditor/api/RTApi;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lcom/onegravity/rteditor/RTManager;->c:I

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/onegravity/rteditor/api/RTApi;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;->EXTRA_MEDIA_ACTION:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;->EXTRA_MEDIA_FACTORY:Ljava/lang/String;

    iget-object v2, p0, Lcom/onegravity/rteditor/RTManager;->j:Lcom/onegravity/rteditor/api/RTApi;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/onegravity/rteditor/RTManager;->j:Lcom/onegravity/rteditor/api/RTApi;

    invoke-virtual {p1}, Lcom/onegravity/rteditor/utils/Constants$MediaAction;->requestCode()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/onegravity/rteditor/api/RTApi;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public final i(Lcom/onegravity/rteditor/RTToolbar;Z)V
    .locals 2

    iput-boolean p2, p0, Lcom/onegravity/rteditor/RTManager;->b:Z

    invoke-interface {p1}, Lcom/onegravity/rteditor/RTToolbar;->getToolbarContainer()Landroid/view/ViewGroup;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    if-nez v0, :cond_3

    if-nez p2, :cond_3

    :cond_1
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_2

    new-instance p2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p2, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_0

    :cond_2
    new-instance p2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p2, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    :goto_0
    const-wide/16 v0, 0x190

    invoke-virtual {p2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v0, Lcom/onegravity/rteditor/RTManager$a;

    invoke-direct {v0, p0, p1}, Lcom/onegravity/rteditor/RTManager$a;-><init>(Lcom/onegravity/rteditor/RTManager;Landroid/view/ViewGroup;)V

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final j()V
    .locals 5

    iget-object v0, p0, Lcom/onegravity/rteditor/RTManager;->a:Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;

    sget-object v1, Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;->SHOW:Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    sget-object v4, Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;->AUTOMATIC:Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;

    if-ne v0, v4, :cond_2

    invoke-virtual {p0}, Lcom/onegravity/rteditor/RTManager;->d()Lcom/onegravity/rteditor/RTEditText;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onegravity/rteditor/RTEditText;->usesRTFormatting()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    move v1, v2

    :cond_2
    iget-object v0, p0, Lcom/onegravity/rteditor/RTManager;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onegravity/rteditor/RTToolbar;

    invoke-virtual {p0, v2, v1}, Lcom/onegravity/rteditor/RTManager;->i(Lcom/onegravity/rteditor/RTToolbar;Z)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public onCaptureImage()V
    .locals 1

    sget-object v0, Lcom/onegravity/rteditor/utils/Constants$MediaAction;->CAPTURE_PICTURE:Lcom/onegravity/rteditor/utils/Constants$MediaAction;

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/RTManager;->h(Lcom/onegravity/rteditor/utils/Constants$MediaAction;)V

    return-void
.end method

.method public onClearFormatting()V
    .locals 9

    invoke-virtual {p0}, Lcom/onegravity/rteditor/RTManager;->d()Lcom/onegravity/rteditor/RTEditText;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    invoke-virtual {v0}, Lcom/onegravity/rteditor/RTEditText;->cloneSpannable()Landroid/text/Spannable;

    move-result-object v2

    sget-object v1, Lcom/onegravity/rteditor/effects/Effects;->FORMATTING_EFFECTS:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onegravity/rteditor/effects/Effect;

    invoke-virtual {v3, v0}, Lcom/onegravity/rteditor/effects/Effect;->clearFormattingInSelection(Lcom/onegravity/rteditor/RTEditText;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    invoke-virtual {v0}, Lcom/onegravity/rteditor/RTEditText;->cloneSpannable()Landroid/text/Spannable;

    move-result-object v3

    iget-object p0, p0, Lcom/onegravity/rteditor/RTManager;->k:Lcom/onegravity/rteditor/a;

    new-instance v8, Lcom/onegravity/rteditor/a$b;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/onegravity/rteditor/a$b;-><init>(Landroid/text/Spannable;Landroid/text/Spannable;IIII)V

    invoke-virtual {p0, v0, v8}, Lcom/onegravity/rteditor/a;->a(Lcom/onegravity/rteditor/RTEditText;Lcom/onegravity/rteditor/a$a;)V

    :cond_1
    return-void
.end method

.method public onClick(Lcom/onegravity/rteditor/RTEditText;Lcom/onegravity/rteditor/spans/LinkSpan;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/onegravity/rteditor/RTManager;->f(Lcom/onegravity/rteditor/RTEditText;Lcom/onegravity/rteditor/spans/RTSpan;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/onegravity/rteditor/RTManager;->j:Lcom/onegravity/rteditor/api/RTApi;

    invoke-virtual {p2}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/onegravity/rteditor/LinkFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/onegravity/rteditor/LinkFragment;

    move-result-object p1

    const-string p2, "ID_01_LINK_FRAGMENT"

    invoke-virtual {p0, p2, p1}, Lcom/onegravity/rteditor/api/RTApi;->openDialogFragment(Ljava/lang/String;Landroid/app/DialogFragment;)V

    :cond_0
    return-void
.end method

.method public onCreateLink()V
    .locals 5

    invoke-virtual {p0}, Lcom/onegravity/rteditor/RTManager;->d()Lcom/onegravity/rteditor/RTEditText;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/onegravity/rteditor/effects/Effects;->LINK:Lcom/onegravity/rteditor/effects/Effect;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    new-instance v3, Lcom/onegravity/rteditor/utils/Selection;

    invoke-direct {v3, v0}, Lcom/onegravity/rteditor/utils/Selection;-><init>(Landroid/widget/EditText;)V

    sget-object v4, Lcom/onegravity/rteditor/effects/SpanCollectMode;->EXACT:Lcom/onegravity/rteditor/effects/SpanCollectMode;

    invoke-virtual {v1, v2, v3, v4}, Lcom/onegravity/rteditor/effects/Effect;->getSpans(Landroid/text/Spannable;Lcom/onegravity/rteditor/utils/Selection;Lcom/onegravity/rteditor/effects/SpanCollectMode;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/onegravity/rteditor/RTEditText;->getSelectedText()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/onegravity/rteditor/RTEditText;->getSelection()Lcom/onegravity/rteditor/utils/Selection;

    move-result-object v0

    iput-object v0, p0, Lcom/onegravity/rteditor/RTManager;->d:Lcom/onegravity/rteditor/utils/Selection;

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onegravity/rteditor/spans/RTSpan;

    invoke-interface {v1}, Lcom/onegravity/rteditor/spans/RTSpan;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/onegravity/rteditor/RTManager;->f(Lcom/onegravity/rteditor/RTEditText;Lcom/onegravity/rteditor/spans/RTSpan;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object p0, p0, Lcom/onegravity/rteditor/RTManager;->j:Lcom/onegravity/rteditor/api/RTApi;

    const-string v0, "ID_01_LINK_FRAGMENT"

    invoke-static {v1, v2}, Lcom/onegravity/rteditor/LinkFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/onegravity/rteditor/LinkFragment;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onegravity/rteditor/api/RTApi;->openDialogFragment(Ljava/lang/String;Landroid/app/DialogFragment;)V

    :cond_1
    return-void
.end method

.method public onDestroy(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/onegravity/rteditor/RTManager;->e()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolderKt;->ensureUnRegister(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onegravity/rteditor/RTManager;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v1}, Lcom/onegravity/rteditor/RTEditText;->o()V

    invoke-virtual {v1, p1}, Lcom/onegravity/rteditor/RTEditText;->k(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/onegravity/rteditor/RTManager;->h:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, p0, Lcom/onegravity/rteditor/RTManager;->i:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onegravity/rteditor/RTToolbar;

    invoke-interface {v0}, Lcom/onegravity/rteditor/RTToolbar;->removeToolbarListener()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/onegravity/rteditor/RTManager;->i:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/onegravity/rteditor/RTManager;->j:Lcom/onegravity/rteditor/api/RTApi;

    return-void
.end method

.method public onEffectSelected(Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V
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

    invoke-virtual {p0}, Lcom/onegravity/rteditor/RTManager;->d()Lcom/onegravity/rteditor/RTEditText;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/onegravity/rteditor/RTEditText;->applyEffect(Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/onegravity/rteditor/LinkFragment$c;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 7
    invoke-virtual {p1}, Lcom/onegravity/rteditor/LinkFragment$c;->a()Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/onegravity/rteditor/RTManager;->j:Lcom/onegravity/rteditor/api/RTApi;

    invoke-virtual {v1, v0}, Lcom/onegravity/rteditor/api/RTApi;->removeFragment(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/onegravity/rteditor/LinkFragment$c;->c()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ID_01_LINK_FRAGMENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/onegravity/rteditor/RTManager;->d()Lcom/onegravity/rteditor/RTEditText;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/onegravity/rteditor/LinkFragment$c;->b()Lcom/onegravity/rteditor/LinkFragment$b;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/onegravity/rteditor/LinkFragment$b;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    iget-object v1, p0, Lcom/onegravity/rteditor/RTManager;->d:Lcom/onegravity/rteditor/utils/Selection;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/onegravity/rteditor/utils/Selection;->end()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v2

    if-gt v1, v2, :cond_0

    iget-object p0, p0, Lcom/onegravity/rteditor/RTManager;->d:Lcom/onegravity/rteditor/utils/Selection;

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/onegravity/rteditor/utils/Selection;

    invoke-direct {p0, v0}, Lcom/onegravity/rteditor/utils/Selection;-><init>(Landroid/widget/EditText;)V

    .line 14
    :goto_0
    invoke-virtual {p1}, Lcom/onegravity/rteditor/LinkFragment$b;->a()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 16
    invoke-virtual {p0}, Lcom/onegravity/rteditor/utils/Selection;->start()I

    move-result v3

    invoke-virtual {p0}, Lcom/onegravity/rteditor/utils/Selection;->end()I

    move-result v4

    invoke-interface {v2, v3, v4, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 17
    invoke-virtual {p0}, Lcom/onegravity/rteditor/utils/Selection;->start()I

    move-result v2

    invoke-virtual {p0}, Lcom/onegravity/rteditor/utils/Selection;->start()I

    move-result p0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr p0, v1

    invoke-virtual {v0, v2, p0}, Landroid/widget/EditText;->setSelection(II)V

    .line 18
    invoke-virtual {p1}, Lcom/onegravity/rteditor/LinkFragment$b;->b()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    .line 19
    :goto_1
    sget-object p1, Lcom/onegravity/rteditor/effects/Effects;->LINK:Lcom/onegravity/rteditor/effects/Effect;

    invoke-virtual {v0, p1, p0}, Lcom/onegravity/rteditor/RTEditText;->applyEffect(Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public onEventMainThread(Lcom/onegravity/rteditor/media/choose/MediaEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/onegravity/rteditor/RTManager;->h:Ljava/util/Map;

    iget v1, p0, Lcom/onegravity/rteditor/RTManager;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onegravity/rteditor/RTEditText;

    .line 2
    invoke-virtual {p1}, Lcom/onegravity/rteditor/media/choose/MediaEvent;->getMedia()Lcom/onegravity/rteditor/api/media/RTMedia;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 3
    instance-of v2, v1, Lcom/onegravity/rteditor/api/media/RTImage;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lcom/onegravity/rteditor/api/media/RTImage;

    invoke-virtual {p0, v0, v1}, Lcom/onegravity/rteditor/RTManager;->g(Lcom/onegravity/rteditor/RTEditText;Lcom/onegravity/rteditor/api/media/RTImage;)V

    .line 5
    invoke-virtual {p0}, Lcom/onegravity/rteditor/RTManager;->e()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->removeStickyEvent(Ljava/lang/Object;)Z

    const p1, 0x7fffffff

    .line 6
    iput p1, p0, Lcom/onegravity/rteditor/RTManager;->c:I

    :cond_0
    return-void
.end method

.method public onFocusChanged(Lcom/onegravity/rteditor/RTEditText;Z)V
    .locals 2

    invoke-virtual {p1}, Lcom/onegravity/rteditor/RTEditText;->usesRTFormatting()Z

    move-result p1

    if-eqz p1, :cond_2

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Lcom/onegravity/rteditor/RTManager;->f:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/onegravity/rteditor/RTManager;->g:Z

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/onegravity/rteditor/RTManager;->c()V

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/onegravity/rteditor/RTManager;->f:Z

    iget-object p1, p0, Lcom/onegravity/rteditor/RTManager;->e:Landroid/os/Handler;

    new-instance p2, Lcom/onegravity/rteditor/RTManager$b;

    invoke-direct {p2, p0}, Lcom/onegravity/rteditor/RTManager$b;-><init>(Lcom/onegravity/rteditor/RTManager;)V

    const-wide/16 v0, 0xa

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public onPickImage()V
    .locals 1

    sget-object v0, Lcom/onegravity/rteditor/utils/Constants$MediaAction;->PICK_PICTURE:Lcom/onegravity/rteditor/utils/Constants$MediaAction;

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/RTManager;->h(Lcom/onegravity/rteditor/utils/Constants$MediaAction;)V

    return-void
.end method

.method public onRedo()V
    .locals 1

    invoke-virtual {p0}, Lcom/onegravity/rteditor/RTManager;->d()Lcom/onegravity/rteditor/RTEditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onegravity/rteditor/RTManager;->k:Lcom/onegravity/rteditor/a;

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/a;->g(Lcom/onegravity/rteditor/RTEditText;)V

    :cond_0
    return-void
.end method

.method public onRestoredInstanceState(Lcom/onegravity/rteditor/RTEditText;)V
    .locals 1

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-class v0, Lcom/onegravity/rteditor/media/choose/MediaEvent;

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->getStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onegravity/rteditor/media/choose/MediaEvent;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/RTManager;->onEventMainThread(Lcom/onegravity/rteditor/media/choose/MediaEvent;)V

    :cond_0
    return-void
.end method

.method public onRichTextEditingChanged(Lcom/onegravity/rteditor/RTEditText;Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/onegravity/rteditor/RTManager;->j()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/onegravity/rteditor/RTManager;->a:Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mToolbarVisibility"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mToolbarIsVisible"

    iget-boolean v1, p0, Lcom/onegravity/rteditor/RTManager;->b:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "mActiveEditor"

    iget v1, p0, Lcom/onegravity/rteditor/RTManager;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/onegravity/rteditor/RTManager;->d:Lcom/onegravity/rteditor/utils/Selection;

    if-eqz p0, :cond_0

    const-string v0, "mLinkSelection"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    return-void
.end method

.method public onSelectionChanged(Lcom/onegravity/rteditor/RTEditText;II)V
    .locals 18

    move-object/from16 v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/onegravity/rteditor/effects/Effects;->ALL_EFFECTS:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v3, v17

    check-cast v3, Lcom/onegravity/rteditor/effects/Effect;

    invoke-virtual {v3, v0}, Lcom/onegravity/rteditor/effects/Effect;->existsInSelection(Lcom/onegravity/rteditor/RTEditText;)Z

    move-result v17

    if-eqz v17, :cond_1

    instance-of v2, v3, Lcom/onegravity/rteditor/effects/BoldEffect;

    if-eqz v2, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    instance-of v2, v3, Lcom/onegravity/rteditor/effects/ItalicEffect;

    if-eqz v2, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    instance-of v2, v3, Lcom/onegravity/rteditor/effects/UnderlineEffect;

    if-eqz v2, :cond_4

    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    instance-of v2, v3, Lcom/onegravity/rteditor/effects/StrikethroughEffect;

    if-eqz v2, :cond_5

    const/4 v7, 0x1

    goto :goto_0

    :cond_5
    instance-of v2, v3, Lcom/onegravity/rteditor/effects/SuperscriptEffect;

    if-eqz v2, :cond_6

    const/4 v8, 0x1

    goto :goto_0

    :cond_6
    instance-of v2, v3, Lcom/onegravity/rteditor/effects/SubscriptEffect;

    if-eqz v2, :cond_7

    const/4 v9, 0x1

    goto :goto_0

    :cond_7
    instance-of v2, v3, Lcom/onegravity/rteditor/effects/BulletEffect;

    if-eqz v2, :cond_8

    const/4 v10, 0x1

    goto :goto_0

    :cond_8
    instance-of v2, v3, Lcom/onegravity/rteditor/effects/NumberEffect;

    if-eqz v2, :cond_9

    const/4 v11, 0x1

    goto :goto_0

    :cond_9
    instance-of v2, v3, Lcom/onegravity/rteditor/effects/AlignmentEffect;

    if-eqz v2, :cond_a

    sget-object v2, Lcom/onegravity/rteditor/effects/Effects;->ALIGNMENT:Lcom/onegravity/rteditor/effects/AlignmentEffect;

    invoke-virtual {v2, v0}, Lcom/onegravity/rteditor/effects/Effect;->valuesInSelection(Lcom/onegravity/rteditor/RTEditText;)Ljava/util/List;

    move-result-object v12

    goto :goto_0

    :cond_a
    instance-of v2, v3, Lcom/onegravity/rteditor/effects/TypefaceEffect;

    if-eqz v2, :cond_b

    sget-object v2, Lcom/onegravity/rteditor/effects/Effects;->TYPEFACE:Lcom/onegravity/rteditor/effects/Effect;

    invoke-virtual {v2, v0}, Lcom/onegravity/rteditor/effects/Effect;->valuesInSelection(Lcom/onegravity/rteditor/RTEditText;)Ljava/util/List;

    move-result-object v13

    goto :goto_0

    :cond_b
    instance-of v2, v3, Lcom/onegravity/rteditor/effects/AbsoluteSizeEffect;

    if-eqz v2, :cond_c

    sget-object v2, Lcom/onegravity/rteditor/effects/Effects;->FONTSIZE:Lcom/onegravity/rteditor/effects/Effect;

    invoke-virtual {v2, v0}, Lcom/onegravity/rteditor/effects/Effect;->valuesInSelection(Lcom/onegravity/rteditor/RTEditText;)Ljava/util/List;

    move-result-object v14

    goto :goto_0

    :cond_c
    instance-of v2, v3, Lcom/onegravity/rteditor/effects/ForegroundColorEffect;

    if-eqz v2, :cond_d

    sget-object v2, Lcom/onegravity/rteditor/effects/Effects;->FONTCOLOR:Lcom/onegravity/rteditor/effects/Effect;

    invoke-virtual {v2, v0}, Lcom/onegravity/rteditor/effects/Effect;->valuesInSelection(Lcom/onegravity/rteditor/RTEditText;)Ljava/util/List;

    move-result-object v15

    goto :goto_0

    :cond_d
    instance-of v2, v3, Lcom/onegravity/rteditor/effects/BackgroundColorEffect;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/onegravity/rteditor/effects/Effects;->BGCOLOR:Lcom/onegravity/rteditor/effects/Effect;

    invoke-virtual {v2, v0}, Lcom/onegravity/rteditor/effects/Effect;->valuesInSelection(Lcom/onegravity/rteditor/RTEditText;)Ljava/util/List;

    move-result-object v16

    goto :goto_0

    :cond_e
    move-object/from16 v2, p0

    iget-object v1, v2, Lcom/onegravity/rteditor/RTManager;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onegravity/rteditor/RTToolbar;

    invoke-interface {v2, v4}, Lcom/onegravity/rteditor/RTToolbar;->setBold(Z)V

    invoke-interface {v2, v5}, Lcom/onegravity/rteditor/RTToolbar;->setItalic(Z)V

    invoke-interface {v2, v6}, Lcom/onegravity/rteditor/RTToolbar;->setUnderline(Z)V

    invoke-interface {v2, v7}, Lcom/onegravity/rteditor/RTToolbar;->setStrikethrough(Z)V

    invoke-interface {v2, v8}, Lcom/onegravity/rteditor/RTToolbar;->setSuperscript(Z)V

    invoke-interface {v2, v9}, Lcom/onegravity/rteditor/RTToolbar;->setSubscript(Z)V

    invoke-interface {v2, v10}, Lcom/onegravity/rteditor/RTToolbar;->setBullet(Z)V

    invoke-interface {v2, v11}, Lcom/onegravity/rteditor/RTToolbar;->setNumber(Z)V

    if-eqz v12, :cond_f

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x1

    if-ne v3, v0, :cond_f

    const/4 v0, 0x0

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/Layout$Alignment;

    invoke-interface {v2, v3}, Lcom/onegravity/rteditor/RTToolbar;->setAlignment(Landroid/text/Layout$Alignment;)V

    move/from16 v3, p2

    move-object/from16 p0, v1

    move/from16 v1, p3

    goto :goto_3

    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    move/from16 v3, p2

    move-object/from16 p0, v1

    move/from16 v1, p3

    invoke-static {v0, v3, v1}, Lcom/onegravity/rteditor/utils/Helper;->isRTL(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_2

    :cond_10
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_2
    invoke-interface {v2, v0}, Lcom/onegravity/rteditor/RTToolbar;->setAlignment(Landroid/text/Layout$Alignment;)V

    :goto_3
    if-eqz v13, :cond_11

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    const/4 v0, 0x0

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onegravity/rteditor/fonts/RTTypeface;

    invoke-interface {v2, v1}, Lcom/onegravity/rteditor/RTToolbar;->setFont(Lcom/onegravity/rteditor/fonts/RTTypeface;)V

    const/4 v0, 0x0

    goto :goto_4

    :cond_11
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Lcom/onegravity/rteditor/RTToolbar;->setFont(Lcom/onegravity/rteditor/fonts/RTTypeface;)V

    :goto_4
    if-nez v14, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-interface {v2, v1}, Lcom/onegravity/rteditor/RTToolbar;->setFontSize(I)V

    const/4 v0, 0x1

    goto :goto_5

    :cond_12
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_13

    const/4 v1, 0x0

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v1}, Lcom/onegravity/rteditor/RTToolbar;->setFontSize(I)V

    goto :goto_5

    :cond_13
    const/4 v1, -0x1

    invoke-interface {v2, v1}, Lcom/onegravity/rteditor/RTToolbar;->setFontSize(I)V

    :goto_5
    if-eqz v15, :cond_14

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_14

    const/4 v0, 0x0

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v0}, Lcom/onegravity/rteditor/RTToolbar;->setFontColor(I)V

    goto :goto_6

    :cond_14
    invoke-interface {v2}, Lcom/onegravity/rteditor/RTToolbar;->removeFontColor()V

    :goto_6
    move-object/from16 v0, v16

    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_16

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v1}, Lcom/onegravity/rteditor/RTToolbar;->setBGColor(I)V

    goto :goto_7

    :cond_15
    const/4 v3, 0x1

    :cond_16
    invoke-interface {v2}, Lcom/onegravity/rteditor/RTToolbar;->removeBGColor()V

    :goto_7
    move-object/from16 v1, p0

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    goto/16 :goto_1

    :cond_17
    return-void
.end method

.method public onTextChanged(Lcom/onegravity/rteditor/RTEditText;Landroid/text/Spannable;Landroid/text/Spannable;IIII)V
    .locals 8

    new-instance v7, Lcom/onegravity/rteditor/a$b;

    move-object v0, v7

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/onegravity/rteditor/a$b;-><init>(Landroid/text/Spannable;Landroid/text/Spannable;IIII)V

    iget-object p0, p0, Lcom/onegravity/rteditor/RTManager;->k:Lcom/onegravity/rteditor/a;

    invoke-virtual {p0, p1, v7}, Lcom/onegravity/rteditor/a;->a(Lcom/onegravity/rteditor/RTEditText;Lcom/onegravity/rteditor/a$a;)V

    return-void
.end method

.method public onUndo()V
    .locals 1

    invoke-virtual {p0}, Lcom/onegravity/rteditor/RTManager;->d()Lcom/onegravity/rteditor/RTEditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onegravity/rteditor/RTManager;->k:Lcom/onegravity/rteditor/a;

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/a;->h(Lcom/onegravity/rteditor/RTEditText;)V

    :cond_0
    return-void
.end method

.method public registerEditor(Lcom/onegravity/rteditor/RTEditText;Z)V
    .locals 2

    iget-object v0, p0, Lcom/onegravity/rteditor/RTManager;->h:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/onegravity/rteditor/RTManager;->j:Lcom/onegravity/rteditor/api/RTApi;

    invoke-virtual {p1, p0, v0}, Lcom/onegravity/rteditor/RTEditText;->l(Lcom/onegravity/rteditor/RTEditTextListener;Lcom/onegravity/rteditor/api/RTMediaFactory;)V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/onegravity/rteditor/RTEditText;->setRichTextEditing(ZZ)V

    invoke-virtual {p0}, Lcom/onegravity/rteditor/RTManager;->j()V

    return-void
.end method

.method public registerToolbar(Landroid/view/ViewGroup;Lcom/onegravity/rteditor/RTToolbar;)V
    .locals 2

    iget-object v0, p0, Lcom/onegravity/rteditor/RTManager;->i:Ljava/util/Map;

    invoke-interface {p2}, Lcom/onegravity/rteditor/RTToolbar;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, p0}, Lcom/onegravity/rteditor/RTToolbar;->setToolbarListener(Lcom/onegravity/rteditor/RTToolbarListener;)V

    invoke-interface {p2, p1}, Lcom/onegravity/rteditor/RTToolbar;->setToolbarContainer(Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Lcom/onegravity/rteditor/RTManager;->j()V

    return-void
.end method

.method public setToolbarVisibility(Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;)V
    .locals 1

    iget-object v0, p0, Lcom/onegravity/rteditor/RTManager;->a:Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/onegravity/rteditor/RTManager;->a:Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/RTManager;->j()V

    :cond_0
    return-void
.end method

.method public unregisterEditor(Lcom/onegravity/rteditor/RTEditText;)V
    .locals 2

    iget-object v0, p0, Lcom/onegravity/rteditor/RTManager;->h:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/onegravity/rteditor/RTEditText;->o()V

    invoke-virtual {p0}, Lcom/onegravity/rteditor/RTManager;->j()V

    return-void
.end method

.method public unregisterToolbar(Lcom/onegravity/rteditor/RTToolbar;)V
    .locals 2

    iget-object v0, p0, Lcom/onegravity/rteditor/RTManager;->i:Ljava/util/Map;

    invoke-interface {p1}, Lcom/onegravity/rteditor/RTToolbar;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/onegravity/rteditor/RTToolbar;->removeToolbarListener()V

    invoke-virtual {p0}, Lcom/onegravity/rteditor/RTManager;->j()V

    return-void
.end method
