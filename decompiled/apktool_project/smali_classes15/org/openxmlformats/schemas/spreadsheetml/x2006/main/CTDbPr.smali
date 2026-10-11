.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDbPr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDbPr;",
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

    const-string v2, "ctdbpra069type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDbPr;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDbPr;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getCommand()Ljava/lang/String;
.end method

.method public abstract getCommandType()J
.end method

.method public abstract getConnection()Ljava/lang/String;
.end method

.method public abstract getServerCommand()Ljava/lang/String;
.end method

.method public abstract isSetCommand()Z
.end method

.method public abstract isSetCommandType()Z
.end method

.method public abstract isSetServerCommand()Z
.end method

.method public abstract setCommand(Ljava/lang/String;)V
.end method

.method public abstract setCommandType(J)V
.end method

.method public abstract setConnection(Ljava/lang/String;)V
.end method

.method public abstract setServerCommand(Ljava/lang/String;)V
.end method

.method public abstract unsetCommand()V
.end method

.method public abstract unsetCommandType()V
.end method

.method public abstract unsetServerCommand()V
.end method

.method public abstract xgetCommand()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetCommandType()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetConnection()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetServerCommand()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xsetCommand(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetCommandType(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetConnection(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetServerCommand(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method
