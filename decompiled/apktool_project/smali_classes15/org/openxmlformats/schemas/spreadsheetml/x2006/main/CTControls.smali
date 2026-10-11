.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTControls;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTControls;",
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

    const-string v2, "ctcontrols75fftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTControls;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTControls;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewControl()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTControl;
.end method

.method public abstract getControlArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTControl;
.end method

.method public abstract getControlArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTControl;
.end method

.method public abstract getControlList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTControl;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewControl(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTControl;
.end method

.method public abstract removeControl(I)V
.end method

.method public abstract setControlArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTControl;)V
.end method

.method public abstract setControlArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTControl;)V
.end method

.method public abstract sizeOfControlArray()I
.end method
