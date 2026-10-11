.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBinding;",
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

    const-string v2, "ctdatabindingc09atype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBinding;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBinding;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getConnectionID()J
.end method

.method public abstract getDataBindingLoadMode()J
.end method

.method public abstract getDataBindingName()Ljava/lang/String;
.end method

.method public abstract getFileBinding()Z
.end method

.method public abstract getFileBindingName()Ljava/lang/String;
.end method

.method public abstract isSetConnectionID()Z
.end method

.method public abstract isSetDataBindingName()Z
.end method

.method public abstract isSetFileBinding()Z
.end method

.method public abstract isSetFileBindingName()Z
.end method

.method public abstract setConnectionID(J)V
.end method

.method public abstract setDataBindingLoadMode(J)V
.end method

.method public abstract setDataBindingName(Ljava/lang/String;)V
.end method

.method public abstract setFileBinding(Z)V
.end method

.method public abstract setFileBindingName(Ljava/lang/String;)V
.end method

.method public abstract unsetConnectionID()V
.end method

.method public abstract unsetDataBindingName()V
.end method

.method public abstract unsetFileBinding()V
.end method

.method public abstract unsetFileBindingName()V
.end method

.method public abstract xgetConnectionID()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetDataBindingLoadMode()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetDataBindingName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetFileBinding()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetFileBindingName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetConnectionID(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetDataBindingLoadMode(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetDataBindingName(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetFileBinding(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetFileBindingName(Lorg/apache/xmlbeans/XmlString;)V
.end method
