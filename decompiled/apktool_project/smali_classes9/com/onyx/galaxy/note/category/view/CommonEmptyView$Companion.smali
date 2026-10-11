.class public final Lcom/onyx/galaxy/note/category/view/CommonEmptyView$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/category/view/CommonEmptyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0014\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0008\u001a\u0004\u0008\n\u0010\u0006R\u001b\u0010\u000c\u001a\u00020\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u0008\u001a\u0004\u0008\r\u0010\u0006R\u001b\u0010\u000f\u001a\u00020\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0008\u001a\u0004\u0008\u0010\u0010\u0006R\u001b\u0010\u0012\u001a\u00020\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0008\u001a\u0004\u0008\u0013\u0010\u0006R\u001b\u0010\u0015\u001a\u00020\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0008\u001a\u0004\u0008\u0016\u0010\u0006\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/CommonEmptyView$Companion;",
        "",
        "()V",
        "DUSTBIN_EMPTY_BEAN",
        "Lcom/onyx/galaxy/note/category/view/CommonEmptyView$EmptyBean;",
        "getDUSTBIN_EMPTY_BEAN",
        "()Lcom/onyx/galaxy/note/category/view/CommonEmptyView$EmptyBean;",
        "DUSTBIN_EMPTY_BEAN$delegate",
        "Lkotlin/Lazy;",
        "FOLDER_EMPTY_BEAN",
        "getFOLDER_EMPTY_BEAN",
        "FOLDER_EMPTY_BEAN$delegate",
        "FOLDER_ROOT_EMPTY_BEAN",
        "getFOLDER_ROOT_EMPTY_BEAN",
        "FOLDER_ROOT_EMPTY_BEAN$delegate",
        "NOTE_DEFAULT_EMPTY_BEAN",
        "getNOTE_DEFAULT_EMPTY_BEAN",
        "NOTE_DEFAULT_EMPTY_BEAN$delegate",
        "TAG_EMPTY_BEAN",
        "getTAG_EMPTY_BEAN",
        "TAG_EMPTY_BEAN$delegate",
        "TAG_ROOT_EMPTY_BEAN",
        "getTAG_ROOT_EMPTY_BEAN",
        "TAG_ROOT_EMPTY_BEAN$delegate",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/view/CommonEmptyView$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDUSTBIN_EMPTY_BEAN()Lcom/onyx/galaxy/note/category/view/CommonEmptyView$EmptyBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/galaxy/note/category/view/CommonEmptyView;->access$getDUSTBIN_EMPTY_BEAN$delegate$cp()Lkotlin/Lazy;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/view/CommonEmptyView$EmptyBean;

    return-object p0
.end method

.method public final getFOLDER_EMPTY_BEAN()Lcom/onyx/galaxy/note/category/view/CommonEmptyView$EmptyBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/galaxy/note/category/view/CommonEmptyView;->access$getFOLDER_EMPTY_BEAN$delegate$cp()Lkotlin/Lazy;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/view/CommonEmptyView$EmptyBean;

    return-object p0
.end method

.method public final getFOLDER_ROOT_EMPTY_BEAN()Lcom/onyx/galaxy/note/category/view/CommonEmptyView$EmptyBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/galaxy/note/category/view/CommonEmptyView;->access$getFOLDER_ROOT_EMPTY_BEAN$delegate$cp()Lkotlin/Lazy;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/view/CommonEmptyView$EmptyBean;

    return-object p0
.end method

.method public final getNOTE_DEFAULT_EMPTY_BEAN()Lcom/onyx/galaxy/note/category/view/CommonEmptyView$EmptyBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/galaxy/note/category/view/CommonEmptyView;->access$getNOTE_DEFAULT_EMPTY_BEAN$delegate$cp()Lkotlin/Lazy;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/view/CommonEmptyView$EmptyBean;

    return-object p0
.end method

.method public final getTAG_EMPTY_BEAN()Lcom/onyx/galaxy/note/category/view/CommonEmptyView$EmptyBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/galaxy/note/category/view/CommonEmptyView;->access$getTAG_EMPTY_BEAN$delegate$cp()Lkotlin/Lazy;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/view/CommonEmptyView$EmptyBean;

    return-object p0
.end method

.method public final getTAG_ROOT_EMPTY_BEAN()Lcom/onyx/galaxy/note/category/view/CommonEmptyView$EmptyBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/galaxy/note/category/view/CommonEmptyView;->access$getTAG_ROOT_EMPTY_BEAN$delegate$cp()Lkotlin/Lazy;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/view/CommonEmptyView$EmptyBean;

    return-object p0
.end method
