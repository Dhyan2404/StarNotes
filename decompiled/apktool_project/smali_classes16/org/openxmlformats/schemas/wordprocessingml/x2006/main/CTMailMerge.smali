.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMailMerge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMailMerge;",
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

    const-string v2, "ctmailmerge1631type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMailMerge;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMailMerge;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewActiveRecord()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract addNewAddressFieldName()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract addNewCheckErrors()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract addNewConnectString()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract addNewDataSource()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;
.end method

.method public abstract addNewDataType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMailMergeDataType;
.end method

.method public abstract addNewDestination()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMailMergeDest;
.end method

.method public abstract addNewDoNotSuppressBlankLines()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewHeaderSource()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;
.end method

.method public abstract addNewLinkToQuery()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewMailAsAttachment()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewMailSubject()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract addNewMainDocumentType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMailMergeDocType;
.end method

.method public abstract addNewOdso()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOdso;
.end method

.method public abstract addNewQuery()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract addNewViewMergedData()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getActiveRecord()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract getAddressFieldName()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract getCheckErrors()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract getConnectString()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract getDataSource()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;
.end method

.method public abstract getDataType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMailMergeDataType;
.end method

.method public abstract getDestination()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMailMergeDest;
.end method

.method public abstract getDoNotSuppressBlankLines()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getHeaderSource()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;
.end method

.method public abstract getLinkToQuery()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getMailAsAttachment()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getMailSubject()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract getMainDocumentType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMailMergeDocType;
.end method

.method public abstract getOdso()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOdso;
.end method

.method public abstract getQuery()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract getViewMergedData()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract isSetActiveRecord()Z
.end method

.method public abstract isSetAddressFieldName()Z
.end method

.method public abstract isSetCheckErrors()Z
.end method

.method public abstract isSetConnectString()Z
.end method

.method public abstract isSetDataSource()Z
.end method

.method public abstract isSetDestination()Z
.end method

.method public abstract isSetDoNotSuppressBlankLines()Z
.end method

.method public abstract isSetHeaderSource()Z
.end method

.method public abstract isSetLinkToQuery()Z
.end method

.method public abstract isSetMailAsAttachment()Z
.end method

.method public abstract isSetMailSubject()Z
.end method

.method public abstract isSetOdso()Z
.end method

.method public abstract isSetQuery()Z
.end method

.method public abstract isSetViewMergedData()Z
.end method

.method public abstract setActiveRecord(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V
.end method

.method public abstract setAddressFieldName(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;)V
.end method

.method public abstract setCheckErrors(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V
.end method

.method public abstract setConnectString(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;)V
.end method

.method public abstract setDataSource(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;)V
.end method

.method public abstract setDataType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMailMergeDataType;)V
.end method

.method public abstract setDestination(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMailMergeDest;)V
.end method

.method public abstract setDoNotSuppressBlankLines(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setHeaderSource(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;)V
.end method

.method public abstract setLinkToQuery(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setMailAsAttachment(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setMailSubject(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;)V
.end method

.method public abstract setMainDocumentType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMailMergeDocType;)V
.end method

.method public abstract setOdso(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOdso;)V
.end method

.method public abstract setQuery(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;)V
.end method

.method public abstract setViewMergedData(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract unsetActiveRecord()V
.end method

.method public abstract unsetAddressFieldName()V
.end method

.method public abstract unsetCheckErrors()V
.end method

.method public abstract unsetConnectString()V
.end method

.method public abstract unsetDataSource()V
.end method

.method public abstract unsetDestination()V
.end method

.method public abstract unsetDoNotSuppressBlankLines()V
.end method

.method public abstract unsetHeaderSource()V
.end method

.method public abstract unsetLinkToQuery()V
.end method

.method public abstract unsetMailAsAttachment()V
.end method

.method public abstract unsetMailSubject()V
.end method

.method public abstract unsetOdso()V
.end method

.method public abstract unsetQuery()V
.end method

.method public abstract unsetViewMergedData()V
.end method
