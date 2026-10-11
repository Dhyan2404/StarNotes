.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocGrid;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocGrid;",
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

    const-string v2, "ctdocgride8b4type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocGrid;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocGrid;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getCharSpace()Ljava/math/BigInteger;
.end method

.method public abstract getLinePitch()Ljava/math/BigInteger;
.end method

.method public abstract getType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocGrid$Enum;
.end method

.method public abstract isSetCharSpace()Z
.end method

.method public abstract isSetLinePitch()Z
.end method

.method public abstract isSetType()Z
.end method

.method public abstract setCharSpace(Ljava/math/BigInteger;)V
.end method

.method public abstract setLinePitch(Ljava/math/BigInteger;)V
.end method

.method public abstract setType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocGrid$Enum;)V
.end method

.method public abstract unsetCharSpace()V
.end method

.method public abstract unsetLinePitch()V
.end method

.method public abstract unsetType()V
.end method

.method public abstract xgetCharSpace()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xgetLinePitch()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xgetType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocGrid;
.end method

.method public abstract xsetCharSpace(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method

.method public abstract xsetLinePitch(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method

.method public abstract xsetType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocGrid;)V
.end method
