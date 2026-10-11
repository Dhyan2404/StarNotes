.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTLayoutVariablePropertySet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTLayoutVariablePropertySet;",
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

    const-string v2, "ctlayoutvariablepropertysetf054type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTLayoutVariablePropertySet;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTLayoutVariablePropertySet;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewAnimLvl()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTAnimLvl;
.end method

.method public abstract addNewAnimOne()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTAnimOne;
.end method

.method public abstract addNewBulletEnabled()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTBulletEnabled;
.end method

.method public abstract addNewChMax()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTChildMax;
.end method

.method public abstract addNewChPref()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTChildPref;
.end method

.method public abstract addNewDir()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTDirection;
.end method

.method public abstract addNewHierBranch()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTHierBranchStyle;
.end method

.method public abstract addNewOrgChart()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTOrgChart;
.end method

.method public abstract addNewResizeHandles()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTResizeHandles;
.end method

.method public abstract getAnimLvl()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTAnimLvl;
.end method

.method public abstract getAnimOne()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTAnimOne;
.end method

.method public abstract getBulletEnabled()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTBulletEnabled;
.end method

.method public abstract getChMax()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTChildMax;
.end method

.method public abstract getChPref()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTChildPref;
.end method

.method public abstract getDir()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTDirection;
.end method

.method public abstract getHierBranch()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTHierBranchStyle;
.end method

.method public abstract getOrgChart()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTOrgChart;
.end method

.method public abstract getResizeHandles()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTResizeHandles;
.end method

.method public abstract isSetAnimLvl()Z
.end method

.method public abstract isSetAnimOne()Z
.end method

.method public abstract isSetBulletEnabled()Z
.end method

.method public abstract isSetChMax()Z
.end method

.method public abstract isSetChPref()Z
.end method

.method public abstract isSetDir()Z
.end method

.method public abstract isSetHierBranch()Z
.end method

.method public abstract isSetOrgChart()Z
.end method

.method public abstract isSetResizeHandles()Z
.end method

.method public abstract setAnimLvl(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTAnimLvl;)V
.end method

.method public abstract setAnimOne(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTAnimOne;)V
.end method

.method public abstract setBulletEnabled(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTBulletEnabled;)V
.end method

.method public abstract setChMax(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTChildMax;)V
.end method

.method public abstract setChPref(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTChildPref;)V
.end method

.method public abstract setDir(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTDirection;)V
.end method

.method public abstract setHierBranch(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTHierBranchStyle;)V
.end method

.method public abstract setOrgChart(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTOrgChart;)V
.end method

.method public abstract setResizeHandles(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTResizeHandles;)V
.end method

.method public abstract unsetAnimLvl()V
.end method

.method public abstract unsetAnimOne()V
.end method

.method public abstract unsetBulletEnabled()V
.end method

.method public abstract unsetChMax()V
.end method

.method public abstract unsetChPref()V
.end method

.method public abstract unsetDir()V
.end method

.method public abstract unsetHierBranch()V
.end method

.method public abstract unsetOrgChart()V
.end method

.method public abstract unsetResizeHandles()V
.end method
