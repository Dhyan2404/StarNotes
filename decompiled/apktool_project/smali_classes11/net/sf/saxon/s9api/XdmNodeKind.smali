.class public final enum Lnet/sf/saxon/s9api/XdmNodeKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/saxon/s9api/XdmNodeKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/saxon/s9api/XdmNodeKind;

.field public static final enum ATTRIBUTE:Lnet/sf/saxon/s9api/XdmNodeKind;

.field public static final enum COMMENT:Lnet/sf/saxon/s9api/XdmNodeKind;

.field public static final enum DOCUMENT:Lnet/sf/saxon/s9api/XdmNodeKind;

.field public static final enum ELEMENT:Lnet/sf/saxon/s9api/XdmNodeKind;

.field public static final enum NAMESPACE:Lnet/sf/saxon/s9api/XdmNodeKind;

.field public static final enum PROCESSING_INSTRUCTION:Lnet/sf/saxon/s9api/XdmNodeKind;

.field public static final enum TEXT:Lnet/sf/saxon/s9api/XdmNodeKind;


# instance fields
.field private final number:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lnet/sf/saxon/s9api/XdmNodeKind;

    const/4 v1, 0x0

    const/16 v2, 0x9

    const-string v3, "DOCUMENT"

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/s9api/XdmNodeKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/sf/saxon/s9api/XdmNodeKind;->DOCUMENT:Lnet/sf/saxon/s9api/XdmNodeKind;

    new-instance v1, Lnet/sf/saxon/s9api/XdmNodeKind;

    const-string v2, "ELEMENT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lnet/sf/saxon/s9api/XdmNodeKind;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/sf/saxon/s9api/XdmNodeKind;->ELEMENT:Lnet/sf/saxon/s9api/XdmNodeKind;

    new-instance v2, Lnet/sf/saxon/s9api/XdmNodeKind;

    const-string v3, "ATTRIBUTE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lnet/sf/saxon/s9api/XdmNodeKind;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnet/sf/saxon/s9api/XdmNodeKind;->ATTRIBUTE:Lnet/sf/saxon/s9api/XdmNodeKind;

    new-instance v3, Lnet/sf/saxon/s9api/XdmNodeKind;

    const-string v4, "TEXT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lnet/sf/saxon/s9api/XdmNodeKind;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lnet/sf/saxon/s9api/XdmNodeKind;->TEXT:Lnet/sf/saxon/s9api/XdmNodeKind;

    new-instance v4, Lnet/sf/saxon/s9api/XdmNodeKind;

    const/4 v5, 0x4

    const/16 v6, 0x8

    const-string v7, "COMMENT"

    invoke-direct {v4, v7, v5, v6}, Lnet/sf/saxon/s9api/XdmNodeKind;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/sf/saxon/s9api/XdmNodeKind;->COMMENT:Lnet/sf/saxon/s9api/XdmNodeKind;

    new-instance v5, Lnet/sf/saxon/s9api/XdmNodeKind;

    const/4 v6, 0x5

    const/4 v7, 0x7

    const-string v8, "PROCESSING_INSTRUCTION"

    invoke-direct {v5, v8, v6, v7}, Lnet/sf/saxon/s9api/XdmNodeKind;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lnet/sf/saxon/s9api/XdmNodeKind;->PROCESSING_INSTRUCTION:Lnet/sf/saxon/s9api/XdmNodeKind;

    new-instance v6, Lnet/sf/saxon/s9api/XdmNodeKind;

    const/4 v7, 0x6

    const/16 v8, 0xd

    const-string v9, "NAMESPACE"

    invoke-direct {v6, v9, v7, v8}, Lnet/sf/saxon/s9api/XdmNodeKind;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lnet/sf/saxon/s9api/XdmNodeKind;->NAMESPACE:Lnet/sf/saxon/s9api/XdmNodeKind;

    filled-new-array/range {v0 .. v6}, [Lnet/sf/saxon/s9api/XdmNodeKind;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/s9api/XdmNodeKind;->$VALUES:[Lnet/sf/saxon/s9api/XdmNodeKind;

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

    iput p3, p0, Lnet/sf/saxon/s9api/XdmNodeKind;->number:I

    return-void
.end method

.method public static forType(I)Lnet/sf/saxon/s9api/XdmNodeKind;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x7

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    sget-object p0, Lnet/sf/saxon/s9api/XdmNodeKind;->NAMESPACE:Lnet/sf/saxon/s9api/XdmNodeKind;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Lnet/sf/saxon/s9api/XdmNodeKind;->DOCUMENT:Lnet/sf/saxon/s9api/XdmNodeKind;

    return-object p0

    :cond_2
    sget-object p0, Lnet/sf/saxon/s9api/XdmNodeKind;->COMMENT:Lnet/sf/saxon/s9api/XdmNodeKind;

    return-object p0

    :cond_3
    sget-object p0, Lnet/sf/saxon/s9api/XdmNodeKind;->PROCESSING_INSTRUCTION:Lnet/sf/saxon/s9api/XdmNodeKind;

    return-object p0

    :cond_4
    sget-object p0, Lnet/sf/saxon/s9api/XdmNodeKind;->TEXT:Lnet/sf/saxon/s9api/XdmNodeKind;

    return-object p0

    :cond_5
    sget-object p0, Lnet/sf/saxon/s9api/XdmNodeKind;->ATTRIBUTE:Lnet/sf/saxon/s9api/XdmNodeKind;

    return-object p0

    :cond_6
    sget-object p0, Lnet/sf/saxon/s9api/XdmNodeKind;->ELEMENT:Lnet/sf/saxon/s9api/XdmNodeKind;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/sf/saxon/s9api/XdmNodeKind;
    .locals 1

    const-class v0, Lnet/sf/saxon/s9api/XdmNodeKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/XdmNodeKind;

    return-object p0
.end method

.method public static values()[Lnet/sf/saxon/s9api/XdmNodeKind;
    .locals 1

    sget-object v0, Lnet/sf/saxon/s9api/XdmNodeKind;->$VALUES:[Lnet/sf/saxon/s9api/XdmNodeKind;

    invoke-virtual {v0}, [Lnet/sf/saxon/s9api/XdmNodeKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/s9api/XdmNodeKind;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/s9api/XdmNodeKind;->number:I

    return p0
.end method
