.class public final enum Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OperationStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;",
        "",
        "title",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getTitle",
        "()Ljava/lang/String;",
        "FAIL",
        "NEW_COPY",
        "OVERWRITE",
        "SKIP",
        "sdk-cloudstorage_release"
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;

.field public static final enum FAIL:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;

.field public static final enum NEW_COPY:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;

.field public static final enum OVERWRITE:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;

.field public static final enum SKIP:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;


# instance fields
.field private final title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;->FAIL:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;->NEW_COPY:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;

    sget-object v2, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;->OVERWRITE:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;

    sget-object v3, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;->SKIP:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;

    filled-new-array {v0, v1, v2, v3}, [Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;

    const/4 v1, 0x0

    const-string v2, "fail"

    const-string v3, "FAIL"

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;->FAIL:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;

    const/4 v1, 0x1

    const-string v2, "newcopy"

    const-string v3, "NEW_COPY"

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;->NEW_COPY:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;

    const/4 v1, 0x2

    const-string v2, "overwrite"

    const-string v3, "OVERWRITE"

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;->OVERWRITE:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;

    const/4 v1, 0x3

    const-string v2, "skip"

    const-string v3, "SKIP"

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;->SKIP:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;

    invoke-static {}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;->$values()[Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;->$VALUES:[Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;->title:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;
    .locals 1

    const-class v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;

    return-object p0
.end method

.method public static values()[Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;->$VALUES:[Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;

    return-object v0
.end method


# virtual methods
.method public final getTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;->title:Ljava/lang/String;

    return-object p0
.end method
