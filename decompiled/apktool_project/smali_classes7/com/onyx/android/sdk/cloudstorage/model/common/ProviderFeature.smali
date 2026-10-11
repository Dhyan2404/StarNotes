.class public final enum Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0081\u0002\u0018\u0000 \u00052\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0005B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;",
        "",
        "(Ljava/lang/String;I)V",
        "Note",
        "Document",
        "Companion",
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

.field private static final synthetic $VALUES:[Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;

.field public static final Companion:Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum Document:Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;

.field public static final enum Note:Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;


# direct methods
.method private static final synthetic $values()[Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;->Note:Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;->Document:Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;

    filled-new-array {v0, v1}, [Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;

    const-string v1, "Note"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;->Note:Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;

    const-string v1, "Document"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;->Document:Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;

    invoke-static {}, Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;->$values()[Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;->$VALUES:[Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;->Companion:Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;
    .locals 1

    const-class v0, Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;

    return-object p0
.end method

.method public static values()[Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;->$VALUES:[Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;

    return-object v0
.end method
