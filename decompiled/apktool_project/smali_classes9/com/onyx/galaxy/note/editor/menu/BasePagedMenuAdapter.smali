.class public abstract Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBasePagedMenuAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BasePagedMenuAdapter.kt\ncom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,188:1\n1855#2,2:189\n*S KotlinDebug\n*F\n+ 1 BasePagedMenuAdapter.kt\ncom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter\n*L\n112#1:189,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010!\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0014\u0008&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010$\u001a\u00020!\u00a2\u0006\u0004\u0008;\u0010<J\u0014\u0010\u0006\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002J\u000e\u0010\t\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007J\u0006\u0010\n\u001a\u00020\u0005J\u0006\u0010\u000b\u001a\u00020\u0007J\u0006\u0010\u000c\u001a\u00020\u0007J\u0006\u0010\r\u001a\u00020\u0007J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0012\u001a\u00020\u0007H&J\u0018\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0003H&J\u0008\u0010\u0016\u001a\u00020\u0005H\u0002J\u0008\u0010\u0017\u001a\u00020\u0005H\u0002J\u0016\u0010\u001a\u001a\u00020\u00052\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0018H\u0002J\u0016\u0010\u001b\u001a\u00020\u00052\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0018H\u0002J\u0018\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0008\u0010\u001e\u001a\u00020\u0010H\u0002J\u0008\u0010\u001f\u001a\u00020\u0010H\u0002J\u0016\u0010 \u001a\u00020\u00052\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0018H\u0002R\u0014\u0010$\u001a\u00020!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u001d\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00188\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010%\u001a\u0004\u0008&\u0010\'R$\u0010/\u001a\u0004\u0018\u00010)8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010*\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\u0016\u00101\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u00100R\u0016\u00102\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u00100R\u0016\u00103\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u00100R\u0016\u00104\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u00100R\u0016\u00105\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u00100R\u0014\u00107\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00086\u00100R\u0014\u00108\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u00100R\u0014\u0010:\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00089\u00100\u00a8\u0006="
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;",
        "",
        "",
        "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;",
        "types",
        "",
        "setMenus",
        "",
        "max",
        "setMaxWidth",
        "release",
        "getContentWidth",
        "getContentHeight",
        "getItemHeight",
        "",
        "isPageUp",
        "Landroid/view/View;",
        "createPageButtonView",
        "index",
        "createDividerView",
        "menu",
        "createMenuView",
        "g",
        "f",
        "",
        "views",
        "b",
        "c",
        "view",
        "h",
        "e",
        "d",
        "j",
        "Landroid/content/Context;",
        "a",
        "Landroid/content/Context;",
        "context",
        "Ljava/util/List;",
        "getMenus",
        "()Ljava/util/List;",
        "menus",
        "Lcom/onyx/galaxy/note/editor/menu/SelectionMenuCallback;",
        "Lcom/onyx/galaxy/note/editor/menu/SelectionMenuCallback;",
        "getCallback",
        "()Lcom/onyx/galaxy/note/editor/menu/SelectionMenuCallback;",
        "setCallback",
        "(Lcom/onyx/galaxy/note/editor/menu/SelectionMenuCallback;)V",
        "callback",
        "I",
        "startIndex",
        "endIndex",
        "contentWidth",
        "contentHeight",
        "maxWidth",
        "i",
        "height",
        "padding",
        "k",
        "pageButtonWidth",
        "<init>",
        "(Landroid/content/Context;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBasePagedMenuAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BasePagedMenuAdapter.kt\ncom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,188:1\n1855#2,2:189\n*S KotlinDebug\n*F\n+ 1 BasePagedMenuAdapter.kt\ncom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter\n*L\n112#1:189,2\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lcom/onyx/galaxy/note/editor/menu/SelectionMenuCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public final i:I

.field public final j:I

.field public final k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->a:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->b:Ljava/util/List;

    const/4 p1, -0x1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->d:I

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_76:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->g:I

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_400:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->h:I

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_40:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->i:I

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_16:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->j:I

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_24:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->k:I

    return-void
.end method

.method public static synthetic a(ZLcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->i(ZLcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static final i(ZLcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$view"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->c:Lcom/onyx/galaxy/note/editor/menu/SelectionMenuCallback;

    if-eqz p0, :cond_0

    sget-object p3, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->LAST_PAGE:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    invoke-interface {p0, p3, p2}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuCallback;->onMenuClick(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;Landroid/view/View;)V

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->g()V

    goto :goto_0

    :cond_1
    iget-object p0, p1, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->c:Lcom/onyx/galaxy/note/editor/menu/SelectionMenuCallback;

    if-eqz p0, :cond_2

    sget-object p3, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->NEXT_PAGE:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    invoke-interface {p0, p3, p2}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuCallback;->onMenuClick(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;Landroid/view/View;)V

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->f()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->c(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->j(Ljava/util/List;)V

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget v2, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->f:I

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->f:I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->c:Lcom/onyx/galaxy/note/editor/menu/SelectionMenuCallback;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuCallback;->onMenuUpdated(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public final c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->d:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->e()Landroid/view/View;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v0, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->d:I

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->createDividerView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->e:I

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->e:I

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->createDividerView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->d()Landroid/view/View;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public abstract createDividerView(I)Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract createMenuView(ILcom/onyx/galaxy/note/editor/data/SelectionMenuType;)Landroid/view/View;
    .param p2    # Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public createPageButtonView(Z)Landroid/view/View;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    sget v1, Lcom/onyx/galaxy/note/R$drawable;->ripple_white:I

    invoke-static {v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget v1, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->j:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    iget v1, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->k:I

    iget v2, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->j:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget p0, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->i:I

    invoke-static {v0, v1, p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutParams(Landroid/view/View;II)V

    if-eqz p1, :cond_0

    sget p0, Lcom/onyx/galaxy/note/R$drawable;->icon_last:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    sget p0, Lcom/onyx/galaxy/note/R$drawable;->icon_next:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-object v0
.end method

.method public final d()Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->createPageButtonView(Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->h(Landroid/view/View;Z)V

    return-object v1
.end method

.method public final e()Landroid/view/View;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->createPageButtonView(Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->h(Landroid/view/View;Z)V

    return-object v1
.end method

.method public final f()V
    .locals 6

    iget v0, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->e:I

    iput v0, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->d:I

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->f:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->d:I

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_2

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->b:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    invoke-virtual {p0, v2, v4}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->createMenuView(ILcom/onyx/galaxy/note/editor/data/SelectionMenuType;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v0, v5

    iget v5, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->h:I

    if-gt v0, v5, :cond_1

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->createDividerView(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->e:I

    :cond_2
    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->b(Ljava/util/List;)V

    return-void
.end method

.method public final g()V
    .locals 7

    iget v0, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->d:I

    iput v0, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->e:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->f:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget v3, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->d:I

    move v4, v0

    :goto_0
    const/4 v5, -0x1

    if-ge v5, v3, :cond_1

    iget-object v5, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->b:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    invoke-virtual {p0, v3, v5}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->createMenuView(ILcom/onyx/galaxy/note/editor/data/SelectionMenuType;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v4, v6

    iget v6, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->h:I

    if-gt v4, v6, :cond_1

    invoke-interface {v2, v0, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v5, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->e:I

    if-eq v3, v5, :cond_0

    invoke-virtual {p0, v3}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->createDividerView(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v2, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    iput v3, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->d:I

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->b(Ljava/util/List;)V

    return-void
.end method

.method public final getCallback()Lcom/onyx/galaxy/note/editor/menu/SelectionMenuCallback;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->c:Lcom/onyx/galaxy/note/editor/menu/SelectionMenuCallback;

    return-object p0
.end method

.method public final getContentHeight()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->g:I

    return p0
.end method

.method public final getContentWidth()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->f:I

    return p0
.end method

.method public final getItemHeight()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->i:I

    return p0
.end method

.method public final getMenus()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->b:Ljava/util/List;

    return-object p0
.end method

.method public final h(Landroid/view/View;Z)V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/un;

    invoke-direct {v0, p2, p0, p1}, Lcom/sunia/HTREnginev2/un;-><init>(ZLcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final j(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    sget v0, Lcom/onyx/galaxy/note/R$drawable;->ripple_white_left_corner:I

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v1, Lcom/onyx/galaxy/note/R$drawable;->ripple_white_right_corner:I

    invoke-static {v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget p1, Lcom/onyx/galaxy/note/R$drawable;->ripple_white_corner:I

    invoke-static {p1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public final release()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->c:Lcom/onyx/galaxy/note/editor/menu/SelectionMenuCallback;

    return-void
.end method

.method public final setCallback(Lcom/onyx/galaxy/note/editor/menu/SelectionMenuCallback;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/editor/menu/SelectionMenuCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->c:Lcom/onyx/galaxy/note/editor/menu/SelectionMenuCallback;

    return-void
.end method

.method public final setMaxWidth(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->h:I

    return-void
.end method

.method public final setMenus(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "types"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->b:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    check-cast p1, Ljava/util/Collection;

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->reset(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    const/4 p1, -0x1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->d:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->e:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->f()V

    return-void
.end method
