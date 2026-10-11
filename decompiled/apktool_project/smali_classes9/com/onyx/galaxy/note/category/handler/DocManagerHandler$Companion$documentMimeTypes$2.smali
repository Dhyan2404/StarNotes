.class final Lcom/onyx/galaxy/note/category/handler/DocManagerHandler$Companion$documentMimeTypes$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/category/handler/DocManagerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDocManagerHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocManagerHandler.kt\ncom/onyx/galaxy/note/category/handler/DocManagerHandler$Companion$documentMimeTypes$2\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,205:1\n37#2,2:206\n*S KotlinDebug\n*F\n+ 1 DocManagerHandler.kt\ncom/onyx/galaxy/note/category/handler/DocManagerHandler$Companion$documentMimeTypes$2\n*L\n172#1:206,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "",
        "invoke",
        "()[Ljava/lang/String;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDocManagerHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocManagerHandler.kt\ncom/onyx/galaxy/note/category/handler/DocManagerHandler$Companion$documentMimeTypes$2\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,205:1\n37#2,2:206\n*S KotlinDebug\n*F\n+ 1 DocManagerHandler.kt\ncom/onyx/galaxy/note/category/handler/DocManagerHandler$Companion$documentMimeTypes$2\n*L\n172#1:206,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/galaxy/note/category/handler/DocManagerHandler$Companion$documentMimeTypes$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/category/handler/DocManagerHandler$Companion$documentMimeTypes$2;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/handler/DocManagerHandler$Companion$documentMimeTypes$2;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/category/handler/DocManagerHandler$Companion$documentMimeTypes$2;->INSTANCE:Lcom/onyx/galaxy/note/category/handler/DocManagerHandler$Companion$documentMimeTypes$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/handler/DocManagerHandler$Companion$documentMimeTypes$2;->invoke()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()[Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object p0, Lcom/onyx/galaxy/note/category/handler/DocManagerHandler;->Companion:Lcom/onyx/galaxy/note/category/handler/DocManagerHandler$Companion;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/handler/DocManagerHandler$Companion;->getDocumentExtensions()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p0

    .line 3
    sget-object v0, Lcom/onyx/galaxy/note/category/handler/DocManagerHandler$Companion$documentMimeTypes$2$1;->INSTANCE:Lcom/onyx/galaxy/note/category/handler/DocManagerHandler$Companion$documentMimeTypes$2$1;

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    .line 4
    sget-object v0, Lcom/onyx/galaxy/note/category/handler/DocManagerHandler$Companion$documentMimeTypes$2$2;->INSTANCE:Lcom/onyx/galaxy/note/category/handler/DocManagerHandler$Companion$documentMimeTypes$2$2;

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    .line 5
    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->toSet(Lkotlin/sequences/Sequence;)Ljava/util/Set;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 6
    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method
