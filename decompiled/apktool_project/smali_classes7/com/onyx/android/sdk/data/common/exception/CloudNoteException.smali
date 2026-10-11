.class public Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/data/common/exception/CloudNoteException$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u0000 \u001d2\u00060\u0001j\u0002`\u0002:\u0001\u001dB\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0003B\u0011\u0008\u0016\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006B\u0011\u0008\u0016\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tB\u0019\u0008\u0016\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\rB#\u0008\u0016\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000eB\u0019\u0008\u0016\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000fJ\u0006\u0010\u0017\u001a\u00020\u0008J\u0008\u0010\u0018\u001a\u00020\u0019H\u0002J\u0010\u0010\u001a\u001a\u00020\u00192\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0008J\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u000bJ\u0008\u0010\u001c\u001a\u00020\u0008H\u0016R\u001e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000b@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\"\u0010\u0013\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "()V",
        "cause",
        "",
        "(Ljava/lang/Throwable;)V",
        "message",
        "",
        "(Ljava/lang/String;)V",
        "code",
        "",
        "error",
        "(ILjava/lang/String;)V",
        "(Ljava/lang/String;Ljava/lang/Throwable;I)V",
        "(Ljava/lang/Throwable;I)V",
        "<set-?>",
        "getCode",
        "()I",
        "errorMsg",
        "getErrorMsg",
        "()Ljava/lang/String;",
        "thirdErrorCode",
        "getError",
        "init",
        "",
        "setError",
        "setThirdErrorCode",
        "toString",
        "Companion",
        "sdk-data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final ABORT_TRANSFER:I = 0x3ec

.field public static final AUTH_ERROR:I = 0x258

.field public static final BAD_REQUEST:I = 0x190

.field public static final BOUND_DEVICES_COUNT_OUT_RANGE_ERROR:I = 0x195

.field public static final CLOUD_STORAGE_CAPACITY_FULL:I = 0x3ea

.field public static final Companion:Lcom/onyx/android/sdk/data/common/exception/CloudNoteException$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DISABLE_UNBIND_ONLY_LOGIN_TYPE:I = 0x1a2

.field public static final DUPLICATE_BINDING:I = 0x3ed

.field public static final EMAIL_IS_USED:I = -0x3

.field public static final FILE_OR_FOLDER_EXIST:I = 0x3e9

.field public static final FILE_OR_FOLDER_NAME_ERROR:I = 0x3e8

.field public static final NETWORK_OR_SERVER_ERROR:I = 0x2

.field public static final ONE_DRIVE_INVALID_GRANT:I = 0x11170

.field public static final ONE_DRIVE_QUOTA_LIMIT_REACHED:I = 0x1fb

.field public static final ONE_NOTE_ERROR_ENTITY_NAME_TOO_LONG:I = 0x4ebb

.field public static final ONE_NOTE_ERROR_FILE_EXCEEDS_LIMIT:I = 0x4e2e

.field public static final ONE_NOTE_ERROR_UPLOAD_LIMIT:I = 0x7595

.field public static final ONE_NOTE_SERVER_ERROR:I = 0x9c41

.field public static final PERMISSION_DENIED:I = 0x3eb

.field public static final PHONE_IS_USED:I = -0x2

.field public static final TOKEN_INVALID:I = 0x191

.field public static final UNKNOWN_ERROR:I = 0x1

.field public static final VERIFICATION_CODE_ERROR:I = 0x1f4


# instance fields
.field private code:I

.field private errorMsg:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private thirdErrorCode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;->Companion:Lcom/onyx/android/sdk/data/common/exception/CloudNoteException$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;->thirdErrorCode:I

    .line 3
    iput v0, p0, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;->code:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 11
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;->thirdErrorCode:I

    .line 13
    iput p1, p0, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;->code:I

    .line 14
    iput-object p2, p0, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;->errorMsg:Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;->thirdErrorCode:I

    .line 9
    iput v0, p0, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;->code:I

    .line 10
    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    .line 17
    iput p1, p0, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;->thirdErrorCode:I

    .line 18
    iput p3, p0, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;->code:I

    .line 19
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;->thirdErrorCode:I

    .line 6
    iput p1, p0, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;->code:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    .line 21
    iput p1, p0, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;->thirdErrorCode:I

    .line 22
    iput p2, p0, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;->code:I

    .line 23
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;->init()V

    return-void
.end method

.method public static final synthetic access$getThirdErrorCode$p(Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;)I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;->thirdErrorCode:I

    return p0
.end method

.method private final init()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getCode()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;->code:I

    return p0
.end method

.method public final getError()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, ""

    :cond_1
    return-object p0
.end method

.method public final getErrorMsg()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;->errorMsg:Ljava/lang/String;

    return-object p0
.end method

.method public final setError(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public final setThirdErrorCode(I)Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;->thirdErrorCode:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;->code:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
