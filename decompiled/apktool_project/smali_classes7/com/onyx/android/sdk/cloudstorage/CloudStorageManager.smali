.class public final Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;,
        Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$EntriesMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCloudStorageManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudStorageManager.kt\ncom/onyx/android/sdk/cloudstorage/CloudStorageManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,363:1\n1855#2,2:364\n1855#2,2:366\n1855#2,2:368\n766#2:370\n857#2,2:371\n223#2,2:373\n37#3,2:375\n*S KotlinDebug\n*F\n+ 1 CloudStorageManager.kt\ncom/onyx/android/sdk/cloudstorage/CloudStorageManager\n*L\n98#1:364,2\n107#1:366,2\n132#1:368,2\n141#1:370\n141#1:371,2\n143#1:373,2\n183#1:375,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c6\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u0000 b2\u00020\u0001:\u0001bB\u0007\u00a2\u0006\u0004\u0008`\u0010aJ\u001c\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0007J\u000e\u0010\r\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u0001J\u000e\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u0001J\u000e\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u0001J\u000e\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012J\u001e\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0016J\u0016\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001aJ\u0006\u0010\u001e\u001a\u00020\u001dJ\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0004J$\u0010%\u001a\u0008\u0012\u0004\u0012\u00020$0\u00042\u0006\u0010 \u001a\u00020\u00142\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020\u0002J\u0012\u0010\'\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060&0\u0004J \u0010\'\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060&0\u00042\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00140&J,\u0010,\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0&0*0\u00042\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00140&J$\u00101\u001a\u0008\u0012\u0004\u0012\u0002000\u00042\u0006\u0010 \u001a\u00020\u00142\u0006\u0010.\u001a\u00020-2\u0006\u0010/\u001a\u00020\u001aJ$\u00104\u001a\u0008\u0012\u0004\u0012\u0002000\u00042\u0006\u0010 \u001a\u00020\u00142\u0006\u00103\u001a\u0002022\u0006\u0010/\u001a\u00020\u001aJ\u001c\u00108\u001a\u0008\u0012\u0004\u0012\u0002070\u00042\u0006\u0010 \u001a\u00020\u00142\u0006\u00106\u001a\u000205J\u001c\u00109\u001a\u0008\u0012\u0004\u0012\u0002070\u00042\u0006\u0010 \u001a\u00020\u00142\u0006\u00106\u001a\u000205J\u001c\u0010:\u001a\u0008\u0012\u0004\u0012\u0002070\u00042\u0006\u0010 \u001a\u00020\u00142\u0006\u00106\u001a\u000205J\u001c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020;0\u00042\u0006\u0010 \u001a\u00020\u00142\u0006\u0010<\u001a\u00020;J\u001c\u0010>\u001a\u0008\u0012\u0004\u0012\u0002070\u00042\u0006\u0010 \u001a\u00020\u00142\u0006\u0010<\u001a\u00020;J\u001c\u0010@\u001a\u0008\u0012\u0004\u0012\u0002070\u00042\u0006\u0010 \u001a\u00020\u00142\u0006\u00106\u001a\u00020?J\u001c\u0010A\u001a\u0008\u0012\u0004\u0012\u0002070\u00042\u0006\u0010 \u001a\u00020\u00142\u0006\u00106\u001a\u00020?J\u001c\u0010B\u001a\u0008\u0012\u0004\u0012\u0002070\u00042\u0006\u0010 \u001a\u00020\u00142\u0006\u00106\u001a\u00020?J\u001c\u0010C\u001a\u0008\u0012\u0004\u0012\u0002070\u00042\u0006\u0010 \u001a\u00020\u00142\u0006\u00106\u001a\u00020?J\"\u0010F\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020E0D0\u00042\u0006\u0010 \u001a\u00020\u00142\u0006\u00106\u001a\u000205J\u001c\u0010G\u001a\u0008\u0012\u0004\u0012\u0002070\u00042\u0006\u0010 \u001a\u00020\u00142\u0006\u00106\u001a\u000205J*\u0010I\u001a\u0008\u0012\u0004\u0012\u0002070\u00042\u0006\u0010 \u001a\u00020\u00142\u000c\u0010H\u001a\u0008\u0012\u0004\u0012\u00020;0&2\u0006\u0010\u001b\u001a\u00020\u001aJ*\u0010J\u001a\u0008\u0012\u0004\u0012\u0002070\u00042\u0006\u0010 \u001a\u00020\u00142\u000c\u0010H\u001a\u0008\u0012\u0004\u0012\u00020;0&2\u0006\u0010\u001b\u001a\u00020\u001aJ*\u0010K\u001a\u0008\u0012\u0004\u0012\u0002070\u00042\u0006\u0010 \u001a\u00020\u00142\u000c\u0010H\u001a\u0008\u0012\u0004\u0012\u00020;0&2\u0006\u0010\u001b\u001a\u00020\u001aJ*\u0010L\u001a\u0008\u0012\u0004\u0012\u0002070\u00042\u0006\u0010 \u001a\u00020\u00142\u000c\u0010H\u001a\u0008\u0012\u0004\u0012\u00020;0&2\u0006\u0010\u001b\u001a\u00020\u001aJ*\u0010M\u001a\u0008\u0012\u0004\u0012\u0002070\u00042\u0006\u0010 \u001a\u00020\u00142\u000c\u0010H\u001a\u0008\u0012\u0004\u0012\u00020;0&2\u0006\u0010\u001b\u001a\u00020\u001aJ\u0014\u0010P\u001a\u0008\u0012\u0004\u0012\u0002070\u00042\u0006\u0010O\u001a\u00020NR\u001b\u0010V\u001a\u00020Q8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008R\u0010S\u001a\u0004\u0008T\u0010UR\u001b\u0010Z\u001a\u00020W8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010S\u001a\u0004\u0008X\u0010YR \u0010\\\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00060*8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010[R\u001c\u0010_\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008]\u0010^\u00a8\u0006c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;",
        "",
        "Landroid/content/Context;",
        "context",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;",
        "b",
        "",
        "c",
        "Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;",
        "event",
        "onAccountChangedEvent",
        "postEvent",
        "subscriber",
        "register",
        "unregister",
        "initProviderContext",
        "Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Certificate;",
        "certificates",
        "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
        "type",
        "Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;",
        "info",
        "initProvider",
        "providerType",
        "",
        "accountId",
        "getProvider",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "getObserveOn",
        "createObservable",
        "provider",
        "Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;",
        "userInfo",
        "activityContext",
        "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
        "authenticate",
        "",
        "getAuthProviders",
        "excludeList",
        "list",
        "",
        "Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;",
        "loadSupportFeatures",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;",
        "cloudNote",
        "userId",
        "Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;",
        "saveNote",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;",
        "cloudAnnotation",
        "saveAnnotation",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;",
        "args",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
        "refreshFileInfoList",
        "fetchFileInfoList",
        "searchFileInfoList",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "cloudFile",
        "fetchFileInfo",
        "createFolder",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;",
        "renameFile",
        "deleteFile",
        "copyFile",
        "moveFile",
        "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFolderTreeEntry;",
        "loadFolderTree",
        "queryChildCount",
        "cloudList",
        "downloadCloudFile",
        "uploadCloudFile",
        "appendCloudFile",
        "saveFileInfoList",
        "abortCloudFileTransfer",
        "Lcom/onyx/android/sdk/cloudstorage/model/PasteLocalFileOperation;",
        "operation",
        "pasteLocalFileToCloud",
        "Lorg/greenrobot/eventbus/EventBus;",
        "a",
        "Lkotlin/Lazy;",
        "getEventBus",
        "()Lorg/greenrobot/eventbus/EventBus;",
        "eventBus",
        "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;",
        "getRxScheduler",
        "()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;",
        "rxScheduler",
        "Ljava/util/Map;",
        "providerMap",
        "d",
        "Ljava/util/List;",
        "cloudStorageProviders",
        "<init>",
        "()V",
        "Companion",
        "sdk-cloudstorage_release"
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
        "SMAP\nCloudStorageManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudStorageManager.kt\ncom/onyx/android/sdk/cloudstorage/CloudStorageManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,363:1\n1855#2,2:364\n1855#2,2:366\n1855#2,2:368\n766#2:370\n857#2,2:371\n223#2,2:373\n37#3,2:375\n*S KotlinDebug\n*F\n+ 1 CloudStorageManager.kt\ncom/onyx/android/sdk/cloudstorage/CloudStorageManager\n*L\n98#1:364,2\n107#1:366,2\n132#1:368,2\n141#1:370\n141#1:371,2\n143#1:373,2\n183#1:375,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field public final a:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
            "Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->Companion:Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->e:Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->register(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$eventBus$2;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$eventBus$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->a:Lkotlin/Lazy;

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$rxScheduler$2;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$rxScheduler$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->b:Lkotlin/Lazy;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->d:Ljava/util/List;

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$EntriesMappings;->entries$0:Lkotlin/enums/EnumEntries;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->c:Ljava/util/Map;

    sget-object v3, Lcom/onyx/android/sdk/cloudstorage/provider/common/CloudStorageProviderFactory;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/common/CloudStorageProviderFactory;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/onyx/android/sdk/cloudstorage/provider/common/CloudStorageProviderFactory;->newType(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;)Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->d(Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;Z)V

    return-void
.end method

.method public static final synthetic access$getOurInstance$cp()Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->e:Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;

    return-object v0
.end method

.method public static final synthetic access$getProviderMap$p(Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->c:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getUserId$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$loadAuthProviders(Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;Landroid/content/Context;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->b(Landroid/content/Context;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadCertificates(Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$setCloudStorageProviders$p(Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->d:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setUserId$cp(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->f:Ljava/lang/String;

    return-void
.end method

.method public static final d(Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;Z)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$event"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final abortCloudFileTransfer(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Ljava/util/List;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cloudList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->getProvider(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;->abortFileTransfer(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;->Companion:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult$Companion;

    new-instance p2, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$a;

    invoke-direct {p2, p1}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$a;-><init>(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult$Companion;)V

    invoke-virtual {p0, p2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final appendCloudFile(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Ljava/util/List;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cloudList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->getProvider(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;->appendFiles(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;->Companion:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult$Companion;

    new-instance p2, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$b;

    invoke-direct {p2, p1}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$b;-><init>(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult$Companion;)V

    invoke-virtual {p0, p2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final authenticate(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;Landroid/content/Context;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
            "Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->c:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;

    invoke-interface {p0, p2, p3}, Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;->authenticate(Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;Landroid/content/Context;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final b(Landroid/content/Context;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/common/action/LoadAuthProvidersAction;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/common/action/LoadAuthProvidersAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$e;-><init>(Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$f;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$f;-><init>(Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnNext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final c(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/data/common/action/LoadCertificatesAction;

    const-string v1, "galaxyCloudStorage"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/data/common/action/LoadCertificatesAction;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$g;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$g;-><init>(Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final copyFile(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;->getAccountId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->getProvider(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;->copyFile(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final createFolder(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cloudFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getAccountId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->getProvider(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;->createFolder(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final createObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "observeOn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final deleteFile(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;->getAccountId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->getProvider(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;->deleteFile(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final downloadCloudFile(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Ljava/util/List;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cloudList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->getProvider(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;->downloadFiles(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;->Companion:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult$Companion;

    new-instance p2, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$c;

    invoke-direct {p2, p1}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$c;-><init>(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult$Companion;)V

    invoke-virtual {p0, p2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final fetchFileInfo(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cloudFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getAccountId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->getProvider(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;->fetchFileInfo(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final fetchFileInfoList(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getAccountId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->getProvider(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;->fetchFileInfoList(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final getAuthProviders()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->getAuthProviders(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final getAuthProviders(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
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
            "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "excludeList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->b(Landroid/content/Context;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    .line 3
    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$d;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$d;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getEventBus()Lorg/greenrobot/eventbus/EventBus;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->a:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/greenrobot/eventbus/EventBus;

    return-object p0
.end method

.method public final getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->getRxScheduler()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method public final getProvider(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "providerType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->d:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;

    invoke-interface {v3}, Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;->getProviderType()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object v3

    if-ne v3, p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;

    invoke-interface {p1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;->getAccountInfo()Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p2, v2, v1, v3}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p1

    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Collection contains no element matching the predicate."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getRxScheduler()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->b:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    return-object p0
.end method

.method public final initProvider(Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->d:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;

    invoke-interface {v1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;->getProviderType()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object v2

    if-ne p2, v2, :cond_0

    invoke-interface {v1, p1, p3}, Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;->initProvider(Landroid/content/Context;Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->c:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1, p3}, Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;->initProvider(Landroid/content/Context;Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;)V

    :cond_2
    return-void
.end method

.method public final initProviderContext(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudStorageMMKVHelper;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudStorageMMKVHelper;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudStorageMMKVHelper;->getProviderCertificates()Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;-><init>()V

    .line 3
    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$EntriesMappings;->entries$0:Lkotlin/enums/EnumEntries;

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->createDefaultCertificate()Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Certificate;

    move-result-object v2

    .line 7
    invoke-virtual {v0, v3, v2}, Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;->find(Ljava/lang/String;Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Certificate;)Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Certificate;

    move-result-object v2

    .line 8
    invoke-virtual {p0, p1, v2}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->initProviderContext(Landroid/content/Context;Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Certificate;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final initProviderContext(Landroid/content/Context;Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Certificate;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Certificate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "certificates"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Certificate;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    const-class v1, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-static {v1, v0}, Lorg/apache/commons/lang3/EnumUtils;->getEnum(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    if-nez v0, :cond_0

    return-void

    .line 11
    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;->Companion:Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext$Companion;

    invoke-virtual {v1, v0, p2}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext$Companion;->createProviderContext(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Certificate;)Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;

    move-result-object p2

    .line 12
    invoke-virtual {p0, p1, v0, p2}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->initProvider(Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;)V

    return-void
.end method

.method public final loadFolderTree(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFolderTreeEntry;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getAccountId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->getProvider(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;->loadFolderTree(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final loadSupportFeatures(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$EntriesMappings;->entries$0:Lkotlin/enums/EnumEntries;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$h;

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$h;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final moveFile(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;->getAccountId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->getProvider(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;->moveFile(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final onAccountChangedEvent(Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/common/action/InitCloudStorageAction;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/cloudstorage/common/action/InitCloudStorageAction;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/sunia/HTREnginev2/ewd;

    invoke-direct {v2, p0, p1}, Lcom/sunia/HTREnginev2/ewd;-><init>(Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final pasteLocalFileToCloud(Lcom/onyx/android/sdk/cloudstorage/model/PasteLocalFileOperation;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/PasteLocalFileOperation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/model/PasteLocalFileOperation;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/PasteLocalFileOperation;->getTargetFolderBean()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getProvider()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getAccountId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->getProvider(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;->pasteLocalFileToCloud(Lcom/onyx/android/sdk/cloudstorage/model/PasteLocalFileOperation;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final postEvent(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final queryChildCount(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getAccountId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->getProvider(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;->queryChildCount(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final refreshFileInfoList(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getAccountId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->getProvider(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;->refreshFileInfoList(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final register(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolderKt;->ensureRegister(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Object;)V

    return-void
.end method

.method public final renameFile(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;->getAccountId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->getProvider(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;->renameFile(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final saveAnnotation(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cloudAnnotation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->getProvider(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;->saveAnnotation(Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final saveFileInfoList(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Ljava/util/List;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cloudList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->getProvider(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;->saveFileInfoList(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final saveNote(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cloudNote"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->getProvider(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;->saveNote(Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final searchFileInfoList(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getAccountId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->getProvider(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;->searchFileInfoList(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final unregister(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolderKt;->ensureUnRegister(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Object;)V

    return-void
.end method

.method public final uploadCloudFile(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Ljava/util/List;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cloudList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->getProvider(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;->uploadFiles(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;->Companion:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult$Companion;

    new-instance p2, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$i;

    invoke-direct {p2, p1}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$i;-><init>(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult$Companion;)V

    invoke-virtual {p0, p2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
