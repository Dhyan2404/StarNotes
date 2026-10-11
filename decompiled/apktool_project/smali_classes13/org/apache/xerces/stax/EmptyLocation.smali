.class public final Lorg/apache/xerces/stax/EmptyLocation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/stream/Location;


# static fields
.field public static final e:Lorg/apache/xerces/stax/EmptyLocation;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/xerces/stax/EmptyLocation;

    invoke-direct {v0}, Lorg/apache/xerces/stax/EmptyLocation;-><init>()V

    sput-object v0, Lorg/apache/xerces/stax/EmptyLocation;->e:Lorg/apache/xerces/stax/EmptyLocation;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/xerces/stax/EmptyLocation;
    .locals 1

    sget-object v0, Lorg/apache/xerces/stax/EmptyLocation;->e:Lorg/apache/xerces/stax/EmptyLocation;

    return-object v0
.end method


# virtual methods
.method public getCharacterOffset()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getColumnNumber()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getLineNumber()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
