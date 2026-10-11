.class final enum Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hslf/usermodel/HSLFAutoShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PathInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;

.field public static final enum clientEscape:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;

.field public static final enum close:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;

.field public static final enum curveTo:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;

.field public static final enum end:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;

.field public static final enum escape:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;

.field public static final enum lineTo:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;

.field public static final enum moveTo:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;


# instance fields
.field private final flag:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;

    const-string v1, "lineTo"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;->lineTo:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;

    new-instance v1, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;

    const-string v2, "curveTo"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;->curveTo:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;

    new-instance v2, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;

    const-string v3, "moveTo"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;->moveTo:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;

    new-instance v3, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;

    const-string v4, "close"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;->close:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;

    new-instance v4, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;

    const-string v5, "end"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;->end:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;

    new-instance v5, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;

    const-string v6, "escape"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;->escape:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;

    new-instance v6, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;

    const-string v7, "clientEscape"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;->clientEscape:Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;

    filled-new-array/range {v0 .. v6}, [Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;->$VALUES:[Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;

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

    iput p3, p0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;->flag:I

    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;
    .locals 5

    .line 2
    invoke-static {}, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;->values()[Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget v4, v3, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;->flag:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;
    .locals 1

    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;->$VALUES:[Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;

    invoke-virtual {v0}, [Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;

    return-object v0
.end method


# virtual methods
.method public getFlag()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFAutoShape$PathInfo;->flag:I

    return p0
.end method
