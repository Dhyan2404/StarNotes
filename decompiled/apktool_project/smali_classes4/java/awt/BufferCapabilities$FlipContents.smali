.class public final Ljava/awt/BufferCapabilities$FlipContents;
.super Ljava/awt/AttributeValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/awt/BufferCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlipContents"
.end annotation


# static fields
.field public static final BACKGROUND:Ljava/awt/BufferCapabilities$FlipContents;

.field public static final COPIED:Ljava/awt/BufferCapabilities$FlipContents;

.field private static I_BACKGROUND:I = 0x1

.field private static I_COPIED:I = 0x3

.field private static I_PRIOR:I = 0x2

.field private static I_UNDEFINED:I

.field private static final NAMES:[Ljava/lang/String;

.field public static final PRIOR:Ljava/awt/BufferCapabilities$FlipContents;

.field public static final UNDEFINED:Ljava/awt/BufferCapabilities$FlipContents;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "prior"

    const-string v1, "copied"

    const-string v2, "undefined"

    const-string v3, "background"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava/awt/BufferCapabilities$FlipContents;->NAMES:[Ljava/lang/String;

    new-instance v0, Ljava/awt/BufferCapabilities$FlipContents;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/awt/BufferCapabilities$FlipContents;-><init>(I)V

    sput-object v0, Ljava/awt/BufferCapabilities$FlipContents;->UNDEFINED:Ljava/awt/BufferCapabilities$FlipContents;

    new-instance v0, Ljava/awt/BufferCapabilities$FlipContents;

    sget v1, Ljava/awt/BufferCapabilities$FlipContents;->I_BACKGROUND:I

    invoke-direct {v0, v1}, Ljava/awt/BufferCapabilities$FlipContents;-><init>(I)V

    sput-object v0, Ljava/awt/BufferCapabilities$FlipContents;->BACKGROUND:Ljava/awt/BufferCapabilities$FlipContents;

    new-instance v0, Ljava/awt/BufferCapabilities$FlipContents;

    sget v1, Ljava/awt/BufferCapabilities$FlipContents;->I_PRIOR:I

    invoke-direct {v0, v1}, Ljava/awt/BufferCapabilities$FlipContents;-><init>(I)V

    sput-object v0, Ljava/awt/BufferCapabilities$FlipContents;->PRIOR:Ljava/awt/BufferCapabilities$FlipContents;

    new-instance v0, Ljava/awt/BufferCapabilities$FlipContents;

    sget v1, Ljava/awt/BufferCapabilities$FlipContents;->I_COPIED:I

    invoke-direct {v0, v1}, Ljava/awt/BufferCapabilities$FlipContents;-><init>(I)V

    sput-object v0, Ljava/awt/BufferCapabilities$FlipContents;->COPIED:Ljava/awt/BufferCapabilities$FlipContents;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    sget-object v0, Ljava/awt/BufferCapabilities$FlipContents;->NAMES:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Ljava/awt/AttributeValue;-><init>(I[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic hashCode()I
    .locals 0

    invoke-super {p0}, Ljava/awt/AttributeValue;->hashCode()I

    move-result p0

    return p0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Ljava/awt/AttributeValue;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
