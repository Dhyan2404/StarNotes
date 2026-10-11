.class public Lorg/apache/xerces/impl/xs/models/XSEmptyCM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/impl/xs/models/XSCMValidator;


# static fields
.field public static final a:S

.field public static final b:Ljava/util/Vector;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lorg/apache/xerces/impl/xs/models/XSEmptyCM;->b:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkUniqueParticleAttribution(Lorg/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public endContentModel([I)Z
    .locals 0

    const/4 p0, 0x0

    aget p1, p1, p0

    if-gez p1, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getTermName(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isCompactedForUPA()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public occurenceInfo([I)[I
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public oneTransition(Lorg/apache/xerces/xni/QName;[ILorg/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    aget p1, p2, p0

    const/4 p3, 0x0

    if-gez p1, :cond_0

    const/4 p1, -0x2

    aput p1, p2, p0

    return-object p3

    :cond_0
    const/4 p1, -0x1

    aput p1, p2, p0

    return-object p3
.end method

.method public startContentModel()[I
    .locals 0

    const/4 p0, 0x0

    filled-new-array {p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public whatCanGoHere([I)Ljava/util/Vector;
    .locals 0

    sget-object p0, Lorg/apache/xerces/impl/xs/models/XSEmptyCM;->b:Ljava/util/Vector;

    return-object p0
.end method
