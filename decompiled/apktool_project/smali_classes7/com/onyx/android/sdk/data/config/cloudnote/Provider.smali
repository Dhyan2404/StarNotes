.class public enum Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/data/config/cloudnote/Provider$ALI_YUN;,
        Lcom/onyx/android/sdk/data/config/cloudnote/Provider$BAIDU_YUN;,
        Lcom/onyx/android/sdk/data/config/cloudnote/Provider$Companion;,
        Lcom/onyx/android/sdk/data/config/cloudnote/Provider$DROP_BOX;,
        Lcom/onyx/android/sdk/data/config/cloudnote/Provider$EVER_NOTE;,
        Lcom/onyx/android/sdk/data/config/cloudnote/Provider$GOOGLE_DRIVE;,
        Lcom/onyx/android/sdk/data/config/cloudnote/Provider$HUAWEI_YUN;,
        Lcom/onyx/android/sdk/data/config/cloudnote/Provider$ONE_DRIVE;,
        Lcom/onyx/android/sdk/data/config/cloudnote/Provider$YNOTE;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0013\u0008\u0086\u0081\u0002\u0018\u0000 \'2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\'B!\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0003J\u0006\u0010\u0017\u001a\u00020\u0000J\u0006\u0010\u0018\u001a\u00020\u0000J\u0006\u0010\u0019\u001a\u00020\u0000J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005R\u0011\u0010\t\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u000c\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\nR\u000e\u0010\r\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011j\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!j\u0002\u0008\"j\u0002\u0008#j\u0002\u0008$j\u0002\u0008%j\u0002\u0008&\u00a8\u0006("
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
        "",
        "title",
        "",
        "typeValue",
        "",
        "isPageCursorProvider",
        "",
        "(Ljava/lang/String;ILjava/lang/String;IZ)V",
        "isDocOnly",
        "()Z",
        "isNoteAndDoc",
        "isNoteOnly",
        "providerType",
        "getTitle",
        "()Ljava/lang/String;",
        "getTypeValue",
        "()I",
        "createDefaultCertificate",
        "Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Certificate;",
        "ensureCreateRootPath",
        "",
        "getProviderRootPath",
        "setDocOnly",
        "setNoteAndDoc",
        "setNoteOnly",
        "setProviderType",
        "EVER_NOTE",
        "YNOTE",
        "DROP_BOX",
        "GOOGLE_DRIVE",
        "BAIDU_YUN",
        "ONE_DRIVE",
        "ALI_YUN",
        "HUAWEI_YUN",
        "ONYX_NOTE",
        "NUT_STORE",
        "WEBDAV",
        "UNKNOWN",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

.field public static final enum ALI_YUN:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

.field public static final enum BAIDU_YUN:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

.field public static final Companion:Lcom/onyx/android/sdk/data/config/cloudnote/Provider$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DOC_ONLY:I = 0x2

.field public static final enum DROP_BOX:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

.field public static final enum EVER_NOTE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

.field public static final enum GOOGLE_DRIVE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

.field public static final enum HUAWEI_YUN:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

.field public static final NOTE_AND_DOC:I = 0x3

.field public static final NOTE_ONLY:I = 0x1

.field public static final enum NUT_STORE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

.field public static final enum ONE_DRIVE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

.field public static final enum ONYX_NOTE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

.field public static final enum UNKNOWN:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

.field public static final enum WEBDAV:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

.field public static final enum YNOTE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;


# instance fields
.field private final isPageCursorProvider:Z

.field private providerType:I

.field private final title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final typeValue:I


# direct methods
.method private static final synthetic $values()[Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    const/4 v1, 0x0

    sget-object v2, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->EVER_NOTE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->YNOTE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->DROP_BOX:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->GOOGLE_DRIVE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->BAIDU_YUN:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->ONE_DRIVE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->ALI_YUN:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->HUAWEI_YUN:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->ONYX_NOTE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->NUT_STORE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->WEBDAV:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->UNKNOWN:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 19

    new-instance v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider$EVER_NOTE;

    const-string v1, "EVER_NOTE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider$EVER_NOTE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->EVER_NOTE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    new-instance v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider$YNOTE;

    const-string v1, "YNOTE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider$YNOTE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->YNOTE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    new-instance v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider$DROP_BOX;

    const-string v1, "DROP_BOX"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider$DROP_BOX;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->DROP_BOX:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    new-instance v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider$GOOGLE_DRIVE;

    const-string v1, "GOOGLE_DRIVE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider$GOOGLE_DRIVE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->GOOGLE_DRIVE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    new-instance v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider$BAIDU_YUN;

    const-string v1, "BAIDU_YUN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider$BAIDU_YUN;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->BAIDU_YUN:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    new-instance v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider$ONE_DRIVE;

    const-string v1, "ONE_DRIVE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider$ONE_DRIVE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->ONE_DRIVE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    new-instance v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider$ALI_YUN;

    const-string v1, "ALI_YUN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider$ALI_YUN;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->ALI_YUN:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    new-instance v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider$HUAWEI_YUN;

    const-string v1, "HUAWEI_YUN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider$HUAWEI_YUN;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->HUAWEI_YUN:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    new-instance v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    const-string v4, "ONYX_NOTE"

    const/16 v5, 0x8

    const-string v6, "onyx"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;-><init>(Ljava/lang/String;ILjava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->ONYX_NOTE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    new-instance v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    const-string v12, "NUT_STORE"

    const/16 v13, 0x9

    const-string v14, "nut_store"

    const/16 v15, 0x8

    const/16 v16, 0x0

    const/16 v17, 0x4

    const/16 v18, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v18}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;-><init>(Ljava/lang/String;ILjava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->NUT_STORE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    new-instance v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    const-string v2, "WEBDAV"

    const/16 v3, 0xa

    const-string v4, "webdav"

    const/16 v5, 0x9

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;-><init>(Ljava/lang/String;ILjava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->WEBDAV:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    new-instance v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    const-string v10, "UNKNOWN"

    const/16 v11, 0xb

    const-string v12, "unknown"

    const/16 v13, 0x63

    const/4 v14, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;-><init>(Ljava/lang/String;ILjava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->UNKNOWN:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-static {}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->$values()[Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->$VALUES:[Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->Companion:Lcom/onyx/android/sdk/data/config/cloudnote/Provider$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p3, p0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->title:Ljava/lang/String;

    .line 4
    iput p4, p0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->typeValue:I

    .line 5
    iput-boolean p5, p0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->isPageCursorProvider:Z

    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->providerType:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;-><init>(Ljava/lang/String;ILjava/lang/String;IZ)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;IZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;-><init>(Ljava/lang/String;ILjava/lang/String;IZ)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
    .locals 1

    const-class v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    return-object p0
.end method

.method public static values()[Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->$VALUES:[Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    return-object v0
.end method


# virtual methods
.method public createDefaultCertificate()Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Certificate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Certificate;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->title:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Certificate;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final ensureCreateRootPath()V
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getProviderRootPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lonyx/org/apache/commons/io/FileUtils;->forceMkdir(Ljava/io/File;)V

    return-void
.end method

.method public final getProviderRootPath()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/SupportAppName;->INSTANCE:Lcom/onyx/android/sdk/data/config/cloudnote/SupportAppName;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/config/cloudnote/SupportAppName;->getNETDISK_PATH()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lonyx/org/apache/commons/io/FileUtils;->forceMkdir(Ljava/io/File;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/config/cloudnote/SupportAppName;->getNETDISK_PATH()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->title:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final getTypeValue()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->typeValue:I

    return p0
.end method

.method public final isDocOnly()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->providerType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isNoteAndDoc()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->providerType:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isNoteOnly()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->providerType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isPageCursorProvider()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->isPageCursorProvider:Z

    return p0
.end method

.method public final setDocOnly()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->setProviderType(I)Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object p0

    return-object p0
.end method

.method public final setNoteAndDoc()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->setProviderType(I)Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object p0

    return-object p0
.end method

.method public final setNoteOnly()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->setProviderType(I)Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object p0

    return-object p0
.end method

.method public final setProviderType(I)Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->providerType:I

    return-object p0
.end method
