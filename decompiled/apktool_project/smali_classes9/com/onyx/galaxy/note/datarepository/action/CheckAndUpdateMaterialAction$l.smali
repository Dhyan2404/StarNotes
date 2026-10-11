.class public final Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction;->r(Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Predicate;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCheckAndUpdateMaterialAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CheckAndUpdateMaterialAction.kt\ncom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$updateResource$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,124:1\n1726#2,3:125\n*S KotlinDebug\n*F\n+ 1 CheckAndUpdateMaterialAction.kt\ncom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$updateResource$2\n*L\n82#1:125,3\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCheckAndUpdateMaterialAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CheckAndUpdateMaterialAction.kt\ncom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$updateResource$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,124:1\n1726#2,3:125\n*S KotlinDebug\n*F\n+ 1 CheckAndUpdateMaterialAction.kt\ncom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$updateResource$2\n*L\n82#1:125,3\n*E\n"
    }
.end annotation


# static fields
.field public static final e:Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$l<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$l;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$l;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$l;->e:Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)Z
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;->getAttachments()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;->getAttachments()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    instance-of p1, p0, Ljava/util/Collection;

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    move p0, v1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    move p0, v0

    :goto_0
    if-eqz p0, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$l;->a(Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)Z

    move-result p0

    return p0
.end method
