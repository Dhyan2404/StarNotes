.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPTab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPTab;",
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

    const-string v2, "ctptaba283type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPTab;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPTab;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getAlignment()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPTabAlignment$Enum;
.end method

.method public abstract getLeader()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPTabLeader$Enum;
.end method

.method public abstract getRelativeTo()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPTabRelativeTo$Enum;
.end method

.method public abstract setAlignment(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPTabAlignment$Enum;)V
.end method

.method public abstract setLeader(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPTabLeader$Enum;)V
.end method

.method public abstract setRelativeTo(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPTabRelativeTo$Enum;)V
.end method

.method public abstract xgetAlignment()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPTabAlignment;
.end method

.method public abstract xgetLeader()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPTabLeader;
.end method

.method public abstract xgetRelativeTo()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPTabRelativeTo;
.end method

.method public abstract xsetAlignment(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPTabAlignment;)V
.end method

.method public abstract xsetLeader(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPTabLeader;)V
.end method

.method public abstract xsetRelativeTo(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPTabRelativeTo;)V
.end method
