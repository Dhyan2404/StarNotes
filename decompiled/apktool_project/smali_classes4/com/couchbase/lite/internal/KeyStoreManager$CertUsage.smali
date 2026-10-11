.class public final enum Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/KeyStoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CertUsage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;

.field public static final enum EMAIL:Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;

.field public static final enum EMAIL_CA:Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;

.field public static final enum OBJECT_SIGNING:Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;

.field public static final enum OBJECT_SIGNING_CA:Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;

.field public static final enum TLS_CA:Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;

.field public static final enum TLS_CLIENT:Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;

.field public static final enum TLS_SERVER:Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;

.field public static final enum UNSPECIFIED:Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;


# instance fields
.field final code:B


# direct methods
.method private static synthetic $values()[Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;
    .locals 8

    sget-object v0, Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;->UNSPECIFIED:Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;

    sget-object v1, Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;->TLS_CLIENT:Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;

    sget-object v2, Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;->TLS_SERVER:Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;

    sget-object v3, Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;->EMAIL:Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;

    sget-object v4, Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;->OBJECT_SIGNING:Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;

    sget-object v5, Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;->TLS_CA:Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;

    sget-object v6, Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;->EMAIL_CA:Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;

    sget-object v7, Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;->OBJECT_SIGNING_CA:Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;

    filled-new-array/range {v0 .. v7}, [Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;->UNSPECIFIED:Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;

    new-instance v0, Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;

    const/16 v1, 0x80

    const-string v2, "TLS_CLIENT"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;->TLS_CLIENT:Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;

    new-instance v0, Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;

    const/16 v1, 0x40

    const-string v2, "TLS_SERVER"

    const/4 v4, 0x2

    invoke-direct {v0, v2, v4, v1}, Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;->TLS_SERVER:Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;

    new-instance v0, Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;

    const/4 v1, 0x3

    const/16 v2, 0x20

    const-string v5, "EMAIL"

    invoke-direct {v0, v5, v1, v2}, Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;->EMAIL:Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;

    new-instance v0, Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;

    const/16 v1, 0x10

    const-string v2, "OBJECT_SIGNING"

    const/4 v5, 0x4

    invoke-direct {v0, v2, v5, v1}, Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;->OBJECT_SIGNING:Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;

    new-instance v0, Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;

    const-string v1, "TLS_CA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v5}, Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;->TLS_CA:Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;

    new-instance v0, Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;

    const-string v1, "EMAIL_CA"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v4}, Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;->EMAIL_CA:Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;

    new-instance v0, Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;

    const-string v1, "OBJECT_SIGNING_CA"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;->OBJECT_SIGNING_CA:Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;

    invoke-static {}, Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;->$values()[Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;

    move-result-object v0

    sput-object v0, Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;->$VALUES:[Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    int-to-byte p1, p3

    iput-byte p1, p0, Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;->code:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;
    .locals 1

    const-class v0, Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;

    return-object p0
.end method

.method public static values()[Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;
    .locals 1

    sget-object v0, Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;->$VALUES:[Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;

    invoke-virtual {v0}, [Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;

    return-object v0
.end method


# virtual methods
.method public getCode()B
    .locals 0

    iget-byte p0, p0, Lcom/couchbase/lite/internal/KeyStoreManager$CertUsage;->code:B

    return p0
.end method
