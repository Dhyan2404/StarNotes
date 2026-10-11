.class public Lonyx/org/apache/commons/io/output/NullPrintStream;
.super Ljava/io/PrintStream;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lonyx/org/apache/commons/io/output/NullPrintStream;

.field public static final NULL_PRINT_STREAM:Lonyx/org/apache/commons/io/output/NullPrintStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/output/NullPrintStream;

    invoke-direct {v0}, Lonyx/org/apache/commons/io/output/NullPrintStream;-><init>()V

    sput-object v0, Lonyx/org/apache/commons/io/output/NullPrintStream;->INSTANCE:Lonyx/org/apache/commons/io/output/NullPrintStream;

    sput-object v0, Lonyx/org/apache/commons/io/output/NullPrintStream;->NULL_PRINT_STREAM:Lonyx/org/apache/commons/io/output/NullPrintStream;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lonyx/org/apache/commons/io/output/NullOutputStream;->INSTANCE:Lonyx/org/apache/commons/io/output/NullOutputStream;

    invoke-direct {p0, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method
