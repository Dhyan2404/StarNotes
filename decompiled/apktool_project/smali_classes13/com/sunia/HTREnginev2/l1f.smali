.class public final synthetic Lcom/sunia/HTREnginev2/l1f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$ISheetInjector;


# instance fields
.field public final synthetic a:Lorg/apache/poi/xssf/streaming/DeferredSXSSFSheet;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/xssf/streaming/DeferredSXSSFSheet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/l1f;->a:Lorg/apache/poi/xssf/streaming/DeferredSXSSFSheet;

    return-void
.end method


# virtual methods
.method public final writeSheetData(Ljava/io/OutputStream;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/l1f;->a:Lorg/apache/poi/xssf/streaming/DeferredSXSSFSheet;

    invoke-static {p0, p1}, Lorg/apache/poi/xssf/streaming/DeferredSXSSFWorkbook;->I(Lorg/apache/poi/xssf/streaming/DeferredSXSSFSheet;Ljava/io/OutputStream;)V

    return-void
.end method
