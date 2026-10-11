.class final enum Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShapePath"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;

.field public static final enum COMPLEX:Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;

.field public static final enum CURVES:Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;

.field public static final enum CURVES_CLOSED:Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;

.field public static final enum LINES:Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;

.field public static final enum LINES_CLOSED:Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;


# instance fields
.field private final flag:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;

    const-string v1, "LINES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;->LINES:Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;

    new-instance v1, Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;

    const-string v2, "LINES_CLOSED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;->LINES_CLOSED:Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;

    new-instance v2, Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;

    const-string v3, "CURVES"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;->CURVES:Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;

    new-instance v3, Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;

    const-string v4, "CURVES_CLOSED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;->CURVES_CLOSED:Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;

    new-instance v4, Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;

    const-string v5, "COMPLEX"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;->COMPLEX:Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;->$VALUES:[Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;

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

    iput p3, p0, Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;->flag:I

    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;
    .locals 5

    .line 2
    invoke-static {}, Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;->values()[Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget v4, v3, Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;->flag:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;
    .locals 1

    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;->$VALUES:[Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;

    invoke-virtual {v0}, [Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;

    return-object v0
.end method


# virtual methods
.method public getFlag()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFreeformShape$ShapePath;->flag:I

    return p0
.end method
