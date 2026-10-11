.class public final Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPBFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PBFactory.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/PBFactory\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 measureTime.kt\nkotlin/time/MeasureTimeKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,198:1\n13330#2,2:199\n215#3:201\n216#3:215\n215#3,2:216\n215#3:218\n216#3:231\n79#4,5:202\n113#4,7:207\n79#4,5:219\n113#4,7:224\n1#5:214\n*S KotlinDebug\n*F\n+ 1 PBFactory.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/PBFactory\n*L\n102#1:199,2\n117#1:201\n117#1:215\n135#1:216,2\n160#1:218\n160#1:231\n119#1:202,5\n119#1:207,7\n162#1:219,5\n162#1:224,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010&\n\u0002\u0008\u000b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008)\u0010*J:\u0010\t\u001a.\u0012\u0004\u0012\u00020\u0005\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\u00060\u0004j\u0016\u0012\u0004\u0012\u00020\u0005\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\u0006`\u00082\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nJT\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u000b\u001a\u00020\n24\u0008\u0002\u0010\u0010\u001a.\u0012\u0004\u0012\u00020\u0005\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\u00060\u0004j\u0016\u0012\u0004\u0012\u00020\u0005\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\u0006`\u00082\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0011J\u000e\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nJ\u001e\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0011J\u0010\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u0005H\u0002J\u0010\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u0005H\u0002J\u0010\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u0005H\u0002J\u0010\u0010\u001c\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u0005H\u0002J\\\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00132\u001a\u0010\u001e\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\u00060\u001d2&\u0010!\u001a\"\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0005\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\u00060 \u0012\u0004\u0012\u00020\u000c0\u001f2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0011H\u0002RB\u0010$\u001a.\u0012\u0004\u0012\u00020\u0005\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\u00060\u0004j\u0016\u0012\u0004\u0012\u00020\u0005\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\u0006`\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010#RB\u0010%\u001a.\u0012\u0004\u0012\u00020\u0005\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\u00060\u0004j\u0016\u0012\u0004\u0012\u00020\u0005\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\u0006`\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010#RB\u0010&\u001a.\u0012\u0004\u0012\u00020\u0005\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\u00060\u0004j\u0016\u0012\u0004\u0012\u00020\u0005\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\u0006`\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010#RB\u0010\'\u001a.\u0012\u0004\u0012\u00020\u0005\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\u00060\u0004j\u0016\u0012\u0004\u0012\u00020\u0005\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\u0006`\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010#RB\u0010(\u001a.\u0012\u0004\u0012\u00020\u0005\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\u00060\u0004j\u0016\u0012\u0004\u0012\u00020\u0005\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\u0006`\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#\u00a8\u0006+"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;",
        "",
        "",
        "types",
        "Ljava/util/LinkedHashMap;",
        "",
        "Lkotlin/reflect/KClass;",
        "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBData;",
        "Lkotlin/collections/LinkedHashMap;",
        "getCustomFuncMap",
        "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;",
        "pbDataContext",
        "",
        "exportToPBFromDB",
        "exportToDBFromPB",
        "exportToNote",
        "funcMap",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "scheduler",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
        "exportToNoteObservable",
        "copyPBDataToDB",
        "copyPBDataToDBObservable",
        "type",
        "c",
        "d",
        "b",
        "a",
        "",
        "actionMap",
        "Lkotlin/Function1;",
        "",
        "action",
        "e",
        "Ljava/util/LinkedHashMap;",
        "pbMap",
        "exportToPBFromDBMap",
        "exportToDBFromPBMap",
        "exportNoteFuncMap",
        "copyPBDataToDBMap",
        "<init>",
        "()V",
        "sdk-replicator_overseasRelease"
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
        "SMAP\nPBFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PBFactory.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/PBFactory\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 measureTime.kt\nkotlin/time/MeasureTimeKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,198:1\n13330#2,2:199\n215#3:201\n216#3:215\n215#3,2:216\n215#3:218\n216#3:231\n79#4,5:202\n113#4,7:207\n79#4,5:219\n113#4,7:224\n1#5:214\n*S KotlinDebug\n*F\n+ 1 PBFactory.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/PBFactory\n*L\n102#1:199,2\n117#1:201\n117#1:215\n135#1:216,2\n160#1:218\n160#1:231\n119#1:202,5\n119#1:207,7\n162#1:219,5\n162#1:224,7\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static b:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static c:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static d:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static e:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v1, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->a:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v1, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->b:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v1, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->c:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v1, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->d:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v1, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->e:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->a:Ljava/util/LinkedHashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Lcom/onyx/android/sdk/replicator/note/proto/pb/ShapePBData;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->a:Ljava/util/LinkedHashMap;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-class v5, Lcom/onyx/android/sdk/replicator/note/proto/pb/ResourcePBData;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->a:Ljava/util/LinkedHashMap;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-class v6, Lcom/onyx/android/sdk/replicator/note/proto/pb/LinkPBData;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->a:Ljava/util/LinkedHashMap;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-class v7, Lcom/onyx/android/sdk/replicator/note/proto/pb/TagPBData;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->a:Ljava/util/LinkedHashMap;

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-class v8, Lcom/onyx/android/sdk/replicator/note/proto/pb/NoteModelPBData;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->a:Ljava/util/LinkedHashMap;

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-class v9, Lcom/onyx/android/sdk/replicator/note/proto/pb/ExtraInfoPBData;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->a:Ljava/util/LinkedHashMap;

    const/4 v8, 0x7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-class v10, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-interface {v1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->a:Ljava/util/LinkedHashMap;

    const/16 v9, 0xa

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-class v11, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualDocPBData;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->a:Ljava/util/LinkedHashMap;

    const/16 v10, 0xd

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-class v12, Lcom/onyx/android/sdk/replicator/note/proto/pb/ThumbnailData;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-interface {v1, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->a:Ljava/util/LinkedHashMap;

    const/16 v11, 0x11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-class v13, Lcom/onyx/android/sdk/replicator/note/proto/pb/TocPBData;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->a:Ljava/util/LinkedHashMap;

    const/16 v12, 0x12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-class v14, Lcom/onyx/android/sdk/replicator/note/proto/pb/BookmarkPBData;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    invoke-interface {v1, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->a:Ljava/util/LinkedHashMap;

    const/16 v13, 0x15

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-class v15, Lcom/onyx/android/sdk/replicator/note/proto/pb/FTSContentPBData;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    invoke-interface {v1, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->a:Ljava/util/LinkedHashMap;

    const/16 v14, 0x16

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-class v16, Lcom/onyx/android/sdk/replicator/note/proto/pb/FTSPageStatePBData;

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-interface {v1, v15, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->c(I)V

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->c(I)V

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->c(I)V

    invoke-virtual {v0, v5}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->c(I)V

    invoke-virtual {v0, v8}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->c(I)V

    invoke-virtual {v0, v9}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->c(I)V

    invoke-virtual {v0, v11}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->c(I)V

    invoke-virtual {v0, v12}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->c(I)V

    invoke-virtual {v0, v13}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->c(I)V

    invoke-virtual {v0, v14}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->c(I)V

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->d(I)V

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->d(I)V

    invoke-virtual {v0, v8}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->d(I)V

    invoke-virtual {v0, v9}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->d(I)V

    invoke-virtual {v0, v11}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->d(I)V

    invoke-virtual {v0, v12}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->d(I)V

    invoke-virtual {v0, v13}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->d(I)V

    invoke-virtual {v0, v14}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->d(I)V

    invoke-virtual {v0, v8}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->b(I)V

    invoke-virtual {v0, v9}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->b(I)V

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->b(I)V

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->b(I)V

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->b(I)V

    invoke-virtual {v0, v5}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->b(I)V

    invoke-virtual {v0, v6}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->b(I)V

    invoke-virtual {v0, v7}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->b(I)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->b(I)V

    invoke-virtual {v0, v11}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->b(I)V

    invoke-virtual {v0, v12}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->b(I)V

    invoke-virtual {v0, v13}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->b(I)V

    invoke-virtual {v0, v14}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->b(I)V

    invoke-virtual {v0, v7}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->a(I)V

    invoke-virtual {v0, v8}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->a(I)V

    invoke-virtual {v0, v9}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->a(I)V

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->a(I)V

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->a(I)V

    invoke-virtual {v0, v5}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->a(I)V

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->a(I)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->a(I)V

    invoke-virtual {v0, v11}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->a(I)V

    invoke-virtual {v0, v12}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->a(I)V

    invoke-virtual {v0, v13}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->a(I)V

    invoke-virtual {v0, v14}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->a(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic copyPBDataToDBObservable$default(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Lio/reactivex/rxjava3/core/Scheduler;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->trampoline()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    const-string p3, "trampoline(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->copyPBDataToDBObservable(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic exportToNoteObservable$default(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Ljava/util/LinkedHashMap;Lio/reactivex/rxjava3/core/Scheduler;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    sget-object p2, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->d:Ljava/util/LinkedHashMap;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->trampoline()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p3

    const-string p4, "trampoline(...)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->exportToNoteObservable(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Ljava/util/LinkedHashMap;Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/core/Scheduler;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->trampoline()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p3

    const-string p4, "trampoline(...)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->e(Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->e:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->a:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/KClass;

    if-nez p1, :cond_0

    const-class p1, Lcom/onyx/android/sdk/replicator/note/proto/pb/DummyPBData;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    :cond_0
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(I)V
    .locals 2

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->d:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->a:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/KClass;

    if-nez p1, :cond_0

    const-class p1, Lcom/onyx/android/sdk/replicator/note/proto/pb/DummyPBData;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    :cond_0
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c(I)V
    .locals 2

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->b:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->a:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/KClass;

    if-nez p1, :cond_0

    const-class p1, Lcom/onyx/android/sdk/replicator/note/proto/pb/DummyPBData;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    :cond_0
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final copyPBDataToDB(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pbDataContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getPrintLogToFile()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getDocumentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " copyPBDataToDB\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->e:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KClass;

    invoke-static {v1}, Lkotlin/reflect/full/KClasses;->createInstance(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBData;

    sget-object v2, Lkotlin/time/TimeSource$Monotonic;->INSTANCE:Lkotlin/time/TimeSource$Monotonic;

    invoke-virtual {v2}, Lkotlin/time/TimeSource$Monotonic;->markNow-z9LOYto()J

    move-result-wide v2

    invoke-interface {v1, p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBData;->copyPBDataToDB(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;)V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v5, Lkotlin/time/TimedValue;

    invoke-static {v2, v3}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->elapsedNow-UwyO8pc(J)J

    move-result-wide v2

    const/4 v6, 0x0

    invoke-direct {v5, v4, v2, v3, v6}, Lkotlin/time/TimedValue;-><init>(Ljava/lang/Object;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getPrintLogToFile()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v5, v6

    :goto_1
    if-eqz v5, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lkotlin/time/TimedValue;->getDuration-UwyO8pc()J

    move-result-wide v3

    invoke-static {v3, v4}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getPrintLogToFile()Z

    move-result p1

    if-eqz p1, :cond_4

    const-class p1, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->wTag(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final copyPBDataToDBObservable(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/Scheduler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "pbDataContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scheduler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->e:Ljava/util/LinkedHashMap;

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory$copyPBDataToDBObservable$1;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory$copyPBDataToDBObservable$1;-><init>(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;)V

    invoke-virtual {p0, v0, v1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->e(Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final d(I)V
    .locals 2

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->c:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->a:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/KClass;

    if-nez p1, :cond_0

    const-class p1, Lcom/onyx/android/sdk/replicator/note/proto/pb/DummyPBData;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    :cond_0
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final e(Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBData;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "+",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBData;",
            ">;>;",
            "Lkotlin/Unit;",
            ">;",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p0

    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1, p3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p3, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory$a;

    invoke-direct {p3, p2, v0, p0}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory$a;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$IntRef;I)V

    invoke-virtual {p1, p3}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "concatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final exportToDBFromPB(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pbDataContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KClass;

    invoke-static {v0}, Lkotlin/reflect/full/KClasses;->createInstance(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBData;

    invoke-interface {v0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBData;->exportToDBFromPB(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final exportToNote(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pbDataContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->d:Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KClass;

    invoke-static {v0}, Lkotlin/reflect/full/KClasses;->createInstance(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBData;

    invoke-interface {v0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBData;->exportToNote(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final exportToNoteObservable(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Ljava/util/LinkedHashMap;Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/LinkedHashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/Scheduler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBData;",
            ">;>;",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "pbDataContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "funcMap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scheduler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->d:Ljava/util/LinkedHashMap;

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory$exportToNoteObservable$1;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory$exportToNoteObservable$1;-><init>(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;)V

    invoke-virtual {p0, p2, v0, p3}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->e(Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final exportToPBFromDB(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pbDataContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getPrintLogToFile()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getDocumentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " exportToPBFromDB\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->b:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KClass;

    invoke-static {v1}, Lkotlin/reflect/full/KClasses;->createInstance(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBData;

    sget-object v2, Lkotlin/time/TimeSource$Monotonic;->INSTANCE:Lkotlin/time/TimeSource$Monotonic;

    invoke-virtual {v2}, Lkotlin/time/TimeSource$Monotonic;->markNow-z9LOYto()J

    move-result-wide v2

    invoke-interface {v1, p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBData;->exportToPBFromDB(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;)V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v5, Lkotlin/time/TimedValue;

    invoke-static {v2, v3}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->elapsedNow-UwyO8pc(J)J

    move-result-wide v2

    const/4 v6, 0x0

    invoke-direct {v5, v4, v2, v3, v6}, Lkotlin/time/TimedValue;-><init>(Ljava/lang/Object;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getPrintLogToFile()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v5, v6

    :goto_1
    if-eqz v5, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lkotlin/time/TimedValue;->getDuration-UwyO8pc()J

    move-result-wide v3

    invoke-static {v3, v4}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getPrintLogToFile()Z

    move-result p1

    if-eqz p1, :cond_4

    const-class p1, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->wTag(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final getCustomFuncMap([I)Ljava/util/LinkedHashMap;
    .locals 5
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "types"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->a:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KClass;

    if-nez v2, :cond_0

    const-class v2, Lcom/onyx/android/sdk/replicator/note/proto/pb/DummyPBData;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    goto :goto_1

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1
    invoke-interface {p0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
