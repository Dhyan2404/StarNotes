.class public final enum Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/KeyStoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;

.field public static final enum RSA:Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;


# direct methods
.method private static synthetic $values()[Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;
    .locals 1

    sget-object v0, Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;->RSA:Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;

    filled-new-array {v0}, [Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;

    const-string v1, "RSA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;->RSA:Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;

    invoke-static {}, Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;->$values()[Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;

    move-result-object v0

    sput-object v0, Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;->$VALUES:[Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;

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

.method public static valueOf(Ljava/lang/String;)Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;
    .locals 1

    const-class v0, Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;

    return-object p0
.end method

.method public static values()[Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;
    .locals 1

    sget-object v0, Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;->$VALUES:[Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;

    invoke-virtual {v0}, [Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/couchbase/lite/internal/KeyStoreManager$KeyAlgorithm;

    return-object v0
.end method
