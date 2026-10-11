.class final Lcom/onyx/galaxy/note/category/view/CommonEmptyView$Companion$TAG_ROOT_EMPTY_BEAN$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/category/view/CommonEmptyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/onyx/galaxy/note/category/view/CommonEmptyView$EmptyBean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/galaxy/note/category/view/CommonEmptyView$EmptyBean;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/galaxy/note/category/view/CommonEmptyView$Companion$TAG_ROOT_EMPTY_BEAN$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/category/view/CommonEmptyView$Companion$TAG_ROOT_EMPTY_BEAN$2;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/view/CommonEmptyView$Companion$TAG_ROOT_EMPTY_BEAN$2;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/category/view/CommonEmptyView$Companion$TAG_ROOT_EMPTY_BEAN$2;->INSTANCE:Lcom/onyx/galaxy/note/category/view/CommonEmptyView$Companion$TAG_ROOT_EMPTY_BEAN$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/onyx/galaxy/note/category/view/CommonEmptyView$EmptyBean;
    .locals 12
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 p0, 0x2

    new-array v0, p0, [Ljava/lang/Integer;

    .line 2
    sget v1, Lcom/onyx/galaxy/note/R$drawable;->icon_note_empty_view_tag_root_sub_title_1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3
    sget v1, Lcom/onyx/galaxy/note/R$drawable;->icon_note_empty_view_tag_root_sub_title_2:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 4
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    .line 5
    sget v1, Lcom/onyx/galaxy/note/R$string;->note_empty_view_tag_root_sub_title_1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 6
    sget v1, Lcom/onyx/galaxy/note/R$string;->note_empty_view_tag_root_sub_title_2:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 7
    sget v1, Lcom/onyx/galaxy/note/R$string;->note_empty_view_tag_root_sub_title_3:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p0

    .line 8
    sget p0, Lcom/onyx/galaxy/note/R$string;->note_empty_view_tag_root_sub_title_4:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    .line 9
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 10
    new-instance p0, Lcom/onyx/galaxy/note/category/view/CommonEmptyView$EmptyBean;

    .line 11
    sget v5, Lcom/onyx/android/sdk/skin/R$drawable;->icon_empty_view_tag_root:I

    .line 12
    sget v6, Lcom/onyx/galaxy/note/R$string;->note_empty_view_tag_root_title:I

    const/4 v7, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v4, p0

    .line 13
    invoke-direct/range {v4 .. v11}, Lcom/onyx/galaxy/note/category/view/CommonEmptyView$EmptyBean;-><init>(IIILjava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/CommonEmptyView$Companion$TAG_ROOT_EMPTY_BEAN$2;->invoke()Lcom/onyx/galaxy/note/category/view/CommonEmptyView$EmptyBean;

    move-result-object p0

    return-object p0
.end method
