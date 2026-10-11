.class public final synthetic Lcom/sunia/HTREnginev2/jso;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xssf/usermodel/XSSFPivotTable$PivotTableReferenceConfigurator;


# instance fields
.field public final synthetic a:Lorg/apache/poi/ss/usermodel/Table;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/ss/usermodel/Table;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jso;->a:Lorg/apache/poi/ss/usermodel/Table;

    return-void
.end method


# virtual methods
.method public final configureReference(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jso;->a:Lorg/apache/poi/ss/usermodel/Table;

    invoke-static {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->f0(Lorg/apache/poi/ss/usermodel/Table;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;)V

    return-void
.end method
