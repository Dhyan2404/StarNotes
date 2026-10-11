.class final Lcom/onyx/galaxy/note/category/action/note/CheckInAction$option$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/note/CheckInAction;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/onyx/android/sdk/data/utils/JSONObjectOption<",
        "Lcom/onyx/android/sdk/data/account/bean/CheckInRecord;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCheckInAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CheckInAction.kt\ncom/onyx/galaxy/note/category/action/note/CheckInAction$option$2\n+ 2 MMKVUtils.kt\ncom/onyx/android/sdk/data/utils/MMKVUtils\n*L\n1#1,52:1\n312#2:53\n*S KotlinDebug\n*F\n+ 1 CheckInAction.kt\ncom/onyx/galaxy/note/category/action/note/CheckInAction$option$2\n*L\n21#1:53\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;",
        "Lcom/onyx/android/sdk/data/account/bean/CheckInRecord;",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCheckInAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CheckInAction.kt\ncom/onyx/galaxy/note/category/action/note/CheckInAction$option$2\n+ 2 MMKVUtils.kt\ncom/onyx/android/sdk/data/utils/MMKVUtils\n*L\n1#1,52:1\n312#2:53\n*S KotlinDebug\n*F\n+ 1 CheckInAction.kt\ncom/onyx/galaxy/note/category/action/note/CheckInAction$option$2\n*L\n21#1:53\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/galaxy/note/category/action/note/CheckInAction$option$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/category/action/note/CheckInAction$option$2;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/action/note/CheckInAction$option$2;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/category/action/note/CheckInAction$option$2;->INSTANCE:Lcom/onyx/galaxy/note/category/action/note/CheckInAction$option$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/data/utils/JSONObjectOption<",
            "Lcom/onyx/android/sdk/data/account/bean/CheckInRecord;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance p0, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    const/4 v1, 0x0

    sget-object v0, Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;->INSTANCE:Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "check_in"

    invoke-static {v0, v4, v2, v3, v2}, Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;->getComposedKey$default(Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    .line 3
    new-instance v3, Lcom/onyx/galaxy/note/category/action/note/CheckInAction$option$2$invoke$$inlined$typeRef$1;

    invoke-direct {v3}, Lcom/onyx/galaxy/note/category/action/note/CheckInAction$option$2$invoke$$inlined$typeRef$1;-><init>()V

    .line 4
    sget-object v4, Lcom/onyx/galaxy/note/category/action/note/CheckInAction$option$2$1;->INSTANCE:Lcom/onyx/galaxy/note/category/action/note/CheckInAction$option$2$1;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Lcom/alibaba/fastjson2/TypeReference;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/note/CheckInAction$option$2;->invoke()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    return-object p0
.end method
