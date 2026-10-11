.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPermStart;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPerm;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPermStart;",
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

    const-string v2, "ctpermstart0140type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPermStart;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPermStart;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getColFirst()Ljava/math/BigInteger;
.end method

.method public abstract getColLast()Ljava/math/BigInteger;
.end method

.method public abstract getEd()Ljava/lang/String;
.end method

.method public abstract getEdGrp()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEdGrp$Enum;
.end method

.method public abstract isSetColFirst()Z
.end method

.method public abstract isSetColLast()Z
.end method

.method public abstract isSetEd()Z
.end method

.method public abstract isSetEdGrp()Z
.end method

.method public abstract setColFirst(Ljava/math/BigInteger;)V
.end method

.method public abstract setColLast(Ljava/math/BigInteger;)V
.end method

.method public abstract setEd(Ljava/lang/String;)V
.end method

.method public abstract setEdGrp(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEdGrp$Enum;)V
.end method

.method public abstract unsetColFirst()V
.end method

.method public abstract unsetColLast()V
.end method

.method public abstract unsetEd()V
.end method

.method public abstract unsetEdGrp()V
.end method

.method public abstract xgetColFirst()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xgetColLast()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xgetEd()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetEdGrp()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEdGrp;
.end method

.method public abstract xsetColFirst(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method

.method public abstract xsetColLast(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method

.method public abstract xsetEd(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetEdGrp(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEdGrp;)V
.end method
