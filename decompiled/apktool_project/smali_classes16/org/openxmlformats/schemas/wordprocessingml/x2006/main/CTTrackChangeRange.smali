.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChangeRange;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChangeRange;",
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

    const-string v2, "cttrackchangerange0b06type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChangeRange;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChangeRange;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getDisplacedByCustomXml()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDisplacedByCustomXml$Enum;
.end method

.method public abstract isSetDisplacedByCustomXml()Z
.end method

.method public abstract setDisplacedByCustomXml(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDisplacedByCustomXml$Enum;)V
.end method

.method public abstract unsetDisplacedByCustomXml()V
.end method

.method public abstract xgetDisplacedByCustomXml()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDisplacedByCustomXml;
.end method

.method public abstract xsetDisplacedByCustomXml(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDisplacedByCustomXml;)V
.end method
