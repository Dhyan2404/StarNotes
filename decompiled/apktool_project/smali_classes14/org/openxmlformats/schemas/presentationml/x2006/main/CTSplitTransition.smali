.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSplitTransition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSplitTransition;",
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

    const-string v2, "ctsplittransition4c60type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSplitTransition;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSplitTransition;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getDir()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionInOutDirectionType$Enum;
.end method

.method public abstract getOrient()Lorg/openxmlformats/schemas/presentationml/x2006/main/STDirection$Enum;
.end method

.method public abstract isSetDir()Z
.end method

.method public abstract isSetOrient()Z
.end method

.method public abstract setDir(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionInOutDirectionType$Enum;)V
.end method

.method public abstract setOrient(Lorg/openxmlformats/schemas/presentationml/x2006/main/STDirection$Enum;)V
.end method

.method public abstract unsetDir()V
.end method

.method public abstract unsetOrient()V
.end method

.method public abstract xgetDir()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionInOutDirectionType;
.end method

.method public abstract xgetOrient()Lorg/openxmlformats/schemas/presentationml/x2006/main/STDirection;
.end method

.method public abstract xsetDir(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTransitionInOutDirectionType;)V
.end method

.method public abstract xsetOrient(Lorg/openxmlformats/schemas/presentationml/x2006/main/STDirection;)V
.end method
