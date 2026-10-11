.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCellMergeTrackChange;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCellMergeTrackChange;",
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

    const-string v2, "ctcellmergetrackchange3683type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCellMergeTrackChange;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCellMergeTrackChange;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getVMerge()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STAnnotationVMerge$Enum;
.end method

.method public abstract getVMergeOrig()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STAnnotationVMerge$Enum;
.end method

.method public abstract isSetVMerge()Z
.end method

.method public abstract isSetVMergeOrig()Z
.end method

.method public abstract setVMerge(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STAnnotationVMerge$Enum;)V
.end method

.method public abstract setVMergeOrig(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STAnnotationVMerge$Enum;)V
.end method

.method public abstract unsetVMerge()V
.end method

.method public abstract unsetVMergeOrig()V
.end method

.method public abstract xgetVMerge()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STAnnotationVMerge;
.end method

.method public abstract xgetVMergeOrig()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STAnnotationVMerge;
.end method

.method public abstract xsetVMerge(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STAnnotationVMerge;)V
.end method

.method public abstract xsetVMergeOrig(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STAnnotationVMerge;)V
.end method
