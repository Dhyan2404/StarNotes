.class public final enum Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/KeyStoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeySize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;

.field public static final enum BIT_1024:Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;

.field public static final enum BIT_2048:Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;

.field public static final enum BIT_3072:Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;

.field public static final enum BIT_4096:Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;

.field public static final enum BIT_512:Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;

.field public static final enum BIT_768:Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;

.field private static final KEY_SIZES:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final len:I


# direct methods
.method private static synthetic $values()[Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;
    .locals 6

    sget-object v0, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;->BIT_512:Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;

    sget-object v1, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;->BIT_768:Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;

    sget-object v2, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;->BIT_1024:Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;

    sget-object v3, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;->BIT_2048:Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;

    sget-object v4, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;->BIT_3072:Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;

    sget-object v5, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;->BIT_4096:Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;

    filled-new-array/range {v0 .. v5}, [Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;

    const/16 v1, 0x200

    const-string v2, "BIT_512"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;->BIT_512:Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;

    new-instance v0, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;

    const/4 v1, 0x1

    const/16 v2, 0x300

    const-string v4, "BIT_768"

    invoke-direct {v0, v4, v1, v2}, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;->BIT_768:Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;

    new-instance v0, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;

    const/4 v1, 0x2

    const/16 v2, 0x400

    const-string v4, "BIT_1024"

    invoke-direct {v0, v4, v1, v2}, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;->BIT_1024:Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;

    new-instance v0, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;

    const/4 v1, 0x3

    const/16 v2, 0x800

    const-string v4, "BIT_2048"

    invoke-direct {v0, v4, v1, v2}, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;->BIT_2048:Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;

    new-instance v0, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;

    const/4 v1, 0x4

    const/16 v2, 0xc00

    const-string v4, "BIT_3072"

    invoke-direct {v0, v4, v1, v2}, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;->BIT_3072:Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;

    new-instance v0, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;

    const/4 v1, 0x5

    const/16 v2, 0x1000

    const-string v4, "BIT_4096"

    invoke-direct {v0, v4, v1, v2}, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;->BIT_4096:Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;

    invoke-static {}, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;->$values()[Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;

    move-result-object v0

    sput-object v0, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;->$VALUES:[Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;->values()[Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    iget v5, v4, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;->len:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;->KEY_SIZES:Ljava/util/Map;

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

    iput p3, p0, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;->len:I

    return-void
.end method

.method public static getKeySize(I)Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;->KEY_SIZES:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;
    .locals 1

    const-class v0, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;

    return-object p0
.end method

.method public static values()[Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;
    .locals 1

    sget-object v0, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;->$VALUES:[Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;

    invoke-virtual {v0}, [Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;

    return-object v0
.end method


# virtual methods
.method public getBitLength()I
    .locals 0

    iget p0, p0, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;->len:I

    return p0
.end method

.method public getByteLength()I
    .locals 0

    iget p0, p0, Lcom/couchbase/lite/internal/KeyStoreManager$KeySize;->len:I

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    return p0
.end method
