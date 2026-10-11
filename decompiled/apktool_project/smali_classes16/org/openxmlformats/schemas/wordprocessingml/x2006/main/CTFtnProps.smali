.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnProps;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnProps;",
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

    const-string v2, "ctftnprops2df8type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnProps;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnProps;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewNumFmt()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumFmt;
.end method

.method public abstract addNewNumRestart()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumRestart;
.end method

.method public abstract addNewNumStart()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract addNewPos()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnPos;
.end method

.method public abstract getNumFmt()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumFmt;
.end method

.method public abstract getNumRestart()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumRestart;
.end method

.method public abstract getNumStart()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract getPos()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnPos;
.end method

.method public abstract isSetNumFmt()Z
.end method

.method public abstract isSetNumRestart()Z
.end method

.method public abstract isSetNumStart()Z
.end method

.method public abstract isSetPos()Z
.end method

.method public abstract setNumFmt(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumFmt;)V
.end method

.method public abstract setNumRestart(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumRestart;)V
.end method

.method public abstract setNumStart(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V
.end method

.method public abstract setPos(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnPos;)V
.end method

.method public abstract unsetNumFmt()V
.end method

.method public abstract unsetNumRestart()V
.end method

.method public abstract unsetNumStart()V
.end method

.method public abstract unsetPos()V
.end method
