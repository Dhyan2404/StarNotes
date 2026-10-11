.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPicBullet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPicBullet;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "ctnumpicbullet61e2type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPicBullet;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPicBullet;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewDrawing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;
.end method

.method public abstract addNewPict()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPicture;
.end method

.method public abstract getDrawing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;
.end method

.method public abstract getNumPicBulletId()Ljava/math/BigInteger;
.end method

.method public abstract getPict()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPicture;
.end method

.method public abstract isSetDrawing()Z
.end method

.method public abstract isSetPict()Z
.end method

.method public abstract setDrawing(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;)V
.end method

.method public abstract setNumPicBulletId(Ljava/math/BigInteger;)V
.end method

.method public abstract setPict(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPicture;)V
.end method

.method public abstract unsetDrawing()V
.end method

.method public abstract unsetPict()V
.end method

.method public abstract xgetNumPicBulletId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xsetNumPicBulletId(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method
