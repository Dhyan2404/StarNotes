.class public Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CLASS_NOTPRESENT:Ljava/lang/String; = "not-present"

.field public static final CLASS_PRESENT:Ljava/lang/String; = "present-unknown-version"

.field public static final ERROR:Ljava/lang/String; = "ERROR."

.field public static final ERROR_FOUND:Ljava/lang/String; = "At least one error was found!"

.field public static final FOUNDCLASSES:Ljava/lang/String; = "foundclasses."

.field public static final VERSION:Ljava/lang/String; = "version."

.field public static final WARNING:Ljava/lang/String; = "WARNING."

.field private static jarVersions:Ljava/util/Hashtable;


# instance fields
.field public jarNames:[Ljava/lang/String;

.field protected outWriter:Ljava/io/PrintWriter;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xd1468

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_1_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x6b7ad

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_1_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x6a77e

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_1_2_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x68109

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_1_2_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xab848

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_0_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xb0022

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_0_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xb2caa

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_1_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xd4f31

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_2_D10"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xd7833

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_2_D11"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xe18da

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_2_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xdd290

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_3_D1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xdd38a

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_3_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xdd408

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_3_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xf0151

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_4_D1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xf379c

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_4_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xfbb7c

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_4_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x91a3c

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xsltc.jar from xalan-j_2_2_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x901a7

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xsltc.jar from xalan-j_2_3_D1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x9005a

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xsltc.jar from xalan-j_2_3_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x9005b

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xsltc.jar from xalan-j_2_3_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x13f02b

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xsltc.jar from xalan-j_2_4_D1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x144463

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xsltc.jar from xalan-j_2_4_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x148209

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xsltc.jar from xalan-j_2_4_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x149309

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xsltc.jar from xalan-j_2_5_D1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x135b9a

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xsltc.jar-bundled from xalan-j_2_3_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x18764

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xml-apis.jar from xalan-j_2_2_0 or xalan-j_2_3_D1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1a7c4

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xml-apis.jar from xalan-j_2_3_0, or xalan-j_2_3_1 from xml-commons-1.0.b2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1a9f9

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xml-apis.jar from xalan-j_2_4_0 from xml-commons RIVERCOURT1 branch"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1bc55

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xml-apis.jar from xalan-j_2_4_1 from factoryfinder-build of xml-commons RIVERCOURT1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1e720

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xml-apis.jar from tck-jaxp-1_2_0 branch of xml-commons"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1e734

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xml-apis.jar from tck-jaxp-1_2_0 branch of xml-commons, tag: xml-commons-external_1_2_01"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x2f69d

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xml-apis.jar from head branch of xml-commons, tag: xml-commons-external_1_3_02"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x67a2a

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from Xerces Tools releases - ERROR:DO NOT USE!"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x184a2f

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xalan-j_1_1 from xerces-1..."

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x16de37

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xalan-j_1_2 from xerces-1_2_0.bin"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x16a860

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xalan-j_1_2_1 from xerces-1_2_1.bin"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xc466c

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xalan-j_1_2_2 from xerces-1_2_2.bin"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x16e06c

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xalan-j_2_0_0 from xerces-1_2_3.bin"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x187e92

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xalan-j_2_0_1 from xerces-1_3_0.bin"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xdcb5e

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v4, "xerces.jar from xalan-j_2_1_0 from xerces-1_4.bin"

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xerces-1_4_0.bin"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1b8285

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xerces-1_4_2.bin"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1a77c2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from Xerces-J-bin.2.0.0.beta3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1b99f3

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xalan-j_2_2_D10,D11,D12 or xerces-1_4_3.bin"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1ba633

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xalan-j_2_2_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1a3fe4

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xercesImpl.jar from xalan-j_2_3_D1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1a6605

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xercesImpl.jar from xalan-j_2_3_0 or xalan-j_2_3_1 from xerces-2_0_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1a615d

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xercesImpl.jar from xalan-j_2_4_D1 from xerces-2_0_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xed4fb

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xercesImpl.jar from xalan-j_2_4_0 from xerces-2_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xcb063

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xercesImpl.jar from xalan-j_2_4_1 from xerces-2_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xd9ba9

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xercesImpl.jar from xalan-j_2_5_D1 from xerces-2_3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xdabb4

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xercesImpl.jar from xerces-2_4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xf6c76

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xercesImpl.jar from Xerces-J-bin.2.6.2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x125e94

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xercesImpl.jar from Xerces-J-bin.2.7.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x926d

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalanj1compat.jar from xalan-j_2_0_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x94d4

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalanj1compat.jar from xalan-j_2_0_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x495b

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalanservlet.jar from xalan-j_2_0_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x53cd

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalanservlet.jar from xalan-j_2_0_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x60fa

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalanservlet.jar from xalan-j_2_3_1 or xalan-j_2_4_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x60ff

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalanservlet.jar from xalan-j_2_4_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x15f2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "jaxp.jar from jaxp1.0.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x213c5

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "parser.jar from jaxp1.0.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x6ef4

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "jaxp.jar from jaxp-1.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x2db1a

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "crimson.jar from jaxp-1.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xc3bb2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from jaxp-1.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x2ff2f

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "crimson.jar from crimson-1.1.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x822b

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "jaxp.jar from crimson-1.1.1 or jakarta-ant-1.4.1b1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x2548d

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "crimson.jar from crimson-1.1.2beta2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1584f

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xml-apis.jar from crimson-1.1.2beta2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x32630

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "crimson.jar from crimson-1.1.3 or jakarta-ant-1.4.1b1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x21406

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "parser.jar from jakarta-ant-1.3 or 1.2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x15a1

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "jaxp.jar from jakarta-ant-1.3 or 1.2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 18

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "xalan.jar"

    const-string v2, "xalansamples.jar"

    const-string v3, "xalanj1compat.jar"

    const-string v4, "xalanservlet.jar"

    const-string v5, "serializer.jar"

    const-string v6, "xerces.jar"

    const-string v7, "xercesImpl.jar"

    const-string v8, "testxsl.jar"

    const-string v9, "crimson.jar"

    const-string v10, "lotusxsl.jar"

    const-string v11, "jaxp.jar"

    const-string v12, "parser.jar"

    const-string v13, "dom.jar"

    const-string v14, "sax.jar"

    const-string v15, "xml.jar"

    const-string v16, "xml-apis.jar"

    const-string v17, "xsltc.jar"

    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarNames:[Ljava/lang/String;

    new-instance v1, Ljava/io/PrintWriter;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v1, v0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->outWriter:Ljava/io/PrintWriter;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7

    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    const/4 v1, 0x0

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    const-string v3, "-out"

    aget-object v4, p0, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    array-length v3, p0

    if-ge v1, v3, :cond_0

    :try_start_0
    new-instance v3, Ljava/io/PrintWriter;

    new-instance v4, Ljava/io/FileWriter;

    aget-object v5, p0, v1

    invoke-direct {v4, v5, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_1

    :catch_0
    move-exception v3

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# WARNING: -out "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " threw "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "# WARNING: -out argument should have a filename, output sent to console"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->checkEnvironment(Ljava/io/PrintWriter;)Z

    return-void
.end method


# virtual methods
.method public appendEnvironmentReport(Lorg/w3c/dom/Node;Lorg/w3c/dom/Document;Ljava/util/Hashtable;)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "key"

    const-string v4, "item"

    if-eqz v0, :cond_6

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    :try_start_0
    const-string v5, "EnvironmentCheck"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    const-string v6, "version"

    const-string v7, "$Revision: 1.5 $"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v6, "ERROR"

    const-string v7, "result"

    const-string v8, "status"

    if-nez v2, :cond_1

    :try_start_1
    invoke-interface {v1, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0, v7, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "appendEnvironmentReport called with null Hashtable!"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v5, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void

    :cond_1
    const-string v0, "environment"

    invoke-interface {v1, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    invoke-interface {v5, v9}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual/range {p3 .. p3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v10

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string v14, "foundclasses."

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v2, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Vector;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v15, p0

    :try_start_3
    invoke-virtual {v15, v9, v1, v14, v12}, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->appendFoundJars(Lorg/w3c/dom/Node;Lorg/w3c/dom/Document;Ljava/util/Vector;Ljava/lang/String;)Z

    move-result v11

    or-int/2addr v0, v11

    goto :goto_0

    :cond_2
    move-object/from16 v15, p0

    const-string v14, "ERROR."

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-interface {v1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v14

    invoke-interface {v14, v3, v12}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Ljava/lang/String;

    invoke-interface {v1, v13}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v13

    invoke-interface {v14, v13}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v9, v14}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v15, p0

    :goto_1
    :try_start_4
    invoke-interface {v1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    invoke-interface {v13, v3, v12}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ERROR. Reading "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " threw: "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v0

    invoke-interface {v13, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v9, v13}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {v1, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const-string v6, "OK"

    :goto_2
    invoke-interface {v1, v7, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appendEnvironmentReport threw: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_3
    return-void
.end method

.method public appendFoundJars(Lorg/w3c/dom/Node;Lorg/w3c/dom/Document;Ljava/util/Vector;Ljava/lang/String;)Z
    .locals 11

    const-string p0, "-"

    const-string p4, "foundJar"

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    move v1, v0

    move v3, v1

    :goto_0
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    invoke-virtual {p3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    :try_start_0
    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    const-string v8, "ERROR."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v3, v2

    :cond_1
    invoke-interface {p2, p4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    const-string v9, "name"

    invoke-virtual {v7, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "desc"

    invoke-virtual {v7, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v10, v2

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {p2, v7}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v7

    invoke-interface {v8, v7}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v8}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-interface {p2, p4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ERROR. Reading "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " threw: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v3

    invoke-interface {v7, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v7}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move v3, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return v3

    :cond_4
    :goto_2
    return v0
.end method

.method public checkAntVersion(Ljava/util/Hashtable;)V
    .locals 5

    const-string p0, "version.ant"

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    const-string v2, "org.apache.tools.ant.Main"

    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/sun/org/apache/xalan/internal/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getAntVersion"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "not-present"

    invoke-virtual {p1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public checkDOMVersion(Ljava/util/Hashtable;)V
    .locals 7

    const-string p0, "ERROR.version.DOM.draftlevel"

    const-string v0, "org.w3c.dom.Node"

    const-string v1, "At least one error was found!"

    const-string v2, "ERROR."

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v5, v3, v4

    :try_start_0
    const-string v5, "org.w3c.dom.Document"

    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/sun/org/apache/xalan/internal/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "createElementNS"

    invoke-virtual {v5, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v5, "version.DOM"

    const-string v6, "2.0"

    invoke-virtual {p1, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v0, v5, v4}, Lcom/sun/org/apache/xalan/internal/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "supported"

    invoke-virtual {v5, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v5, "2.0wd"

    invoke-virtual {p1, p0, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v0, v5, v4}, Lcom/sun/org/apache/xalan/internal/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "isSupported"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "version.DOM.draftlevel"

    const-string v3, "2.0fd"

    invoke-virtual {p1, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    :try_start_3
    const-string v0, "2.0unknown"

    invoke-virtual {p1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR attempting to load DOM level 2 class: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ERROR.version.DOM"

    invoke-virtual {p1, v0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public checkEnvironment(Ljava/io/PrintWriter;)Z
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->outWriter:Ljava/io/PrintWriter;

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->getEnvironmentHash()Ljava/util/Hashtable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->writeEnvironmentReport(Ljava/util/Hashtable;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "# WARNING: Potential problems found in your environment!"

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    const-string p1, "#    Check any \'ERROR\' items above against the Xalan FAQs"

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    const-string p1, "#    to correct potential problems with your classes/jars"

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    const-string p1, "#    http://xml.apache.org/xalan-j/faq.html"

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->outWriter:Ljava/io/PrintWriter;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const-string p1, "# YAHOO! Your environment seems to be OK."

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->outWriter:Ljava/io/PrintWriter;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public checkJAXPVersion(Ljava/util/Hashtable;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Class;

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "javax.xml.parsers.DocumentBuilder"

    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sun/org/apache/xalan/internal/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getDOMImplementation"

    invoke-virtual {v0, v1, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string p0, "version.JAXP"

    const-string v1, "1.1 or higher"

    invoke-virtual {p1, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "At least one error was found!"

    const-string v1, "ERROR."

    const-string v2, "ERROR.version.JAXP"

    if-eqz v0, :cond_1

    const-string v0, "1.0.1"

    invoke-virtual {p1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v0, "not-present"

    invoke-virtual {p1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public checkParserVersion(Ljava/util/Hashtable;)V
    .locals 8

    const-string p0, "version.crimson"

    const-string v0, "version.xerces2"

    const-string v1, "fVersion"

    const-string v2, "version.xerces1"

    const-string v3, "not-present"

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    const-string v6, "com.sun.org.apache.xerces.internal.framework.Version"

    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/sun/org/apache/xalan/internal/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v2, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    :try_start_1
    const-string v2, "com.sun.org.apache.xerces.internal.impl.Version"

    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v2, v6, v5}, Lcom/sun/org/apache/xalan/internal/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    invoke-virtual {p1, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    :try_start_2
    const-string v0, "org.apache.crimson.parser.Parser2"

    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/sun/org/apache/xalan/internal/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    const-string v0, "present-unknown-version"

    invoke-virtual {p1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    invoke-virtual {p1, p0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method public checkPathForJars(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Vector;
    .locals 9

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    array-length v0, p2

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v1, Ljava/util/StringTokenizer;

    sget-object v2, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    aget-object v3, p2, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_4

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    const-string v5, "-apparent.version"

    const-string v6, "-path"

    const/4 v7, 0x2

    if-eqz v4, :cond_3

    :try_start_0
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4, v7}, Ljava/util/Hashtable;-><init>(I)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, p2, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "xalan.jar"

    aget-object v7, p2, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, p2, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v6, p2, v2

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {p0, v6, v7, v8}, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->getApparentVersion(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3, v7}, Ljava/util/Hashtable;-><init>(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, p2, v2

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WARNING. Classpath entry: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " does not exist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, p2, v2

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "not-present"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :catch_0
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    return-object v0

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public checkProcessorVersion(Ljava/util/Hashtable;)V
    .locals 10

    const-string p0, "S_VERSION"

    const-string v0, "version.xalan2_2"

    const-string v1, "version.xalan2x"

    const-string v2, "version.xalan1"

    const-string v3, "not-present"

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    const-string v6, "com.sun.org.apache.xalan.internal.xslt.XSLProcessorVersion"

    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-static {v6, v7, v4}, Lcom/sun/org/apache/xalan/internal/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "PRODUCT"

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v8, 0x3b

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v9, "LANGUAGE"

    invoke-virtual {v6, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v6, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v2, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    :try_start_1
    const-string v2, "com.sun.org.apache.xalan.internal.processor.XSLProcessorVersion"

    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v2, v6, v4}, Lcom/sun/org/apache/xalan/internal/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    invoke-virtual {p1, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const/4 p0, 0x0

    :try_start_2
    new-array v1, p0, [Ljava/lang/Class;

    const-string v2, "com.sun.org.apache.xalan.internal.Version"

    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v2, v6, v4}, Lcom/sun/org/apache/xalan/internal/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getVersion"

    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {v1, v5, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    invoke-virtual {p1, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method public checkSAXVersion(Ljava/util/Hashtable;)V
    .locals 10

    const-string p0, "version.SAX-backlevel"

    const-string v0, "parse"

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    :cond_0
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [Ljava/lang/Class;

    const-class v5, Lorg/xml/sax/Attributes;

    aput-object v5, v3, v4

    :try_start_0
    const-string v4, "org.xml.sax.helpers.AttributesImpl"

    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/sun/org/apache/xalan/internal/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setAttributes"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "version.SAX"

    const-string v4, "2.0"

    invoke-virtual {p1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERROR attempting to load SAX version 2 class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "ERROR.version.SAX"

    invoke-virtual {p1, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "ERROR."

    const-string v7, "At least one error was found!"

    invoke-virtual {p1, v4, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_1
    const-string v8, "org.xml.sax.XMLReader"

    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-static {v8, v9, v1}, Lcom/sun/org/apache/xalan/internal/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v8, "2.0beta2-or-earlier"

    invoke-virtual {p1, p0, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v6, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v4, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_2
    const-string v3, "org.xml.sax.Parser"

    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/sun/org/apache/xalan/internal/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "1.0"

    invoke-virtual {p1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR attempting to load SAX version 1 class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ERROR.version.SAX-backlevel"

    invoke-virtual {p1, v0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public checkSystemProperties(Ljava/util/Hashtable;)V
    .locals 5

    const-string v0, "java.ext.dirs"

    const-string v1, "sun.boot.class.path"

    const-string v2, "java.class.path"

    const-string v3, "java.version"

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    :cond_0
    :try_start_0
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v4, "WARNING: SecurityException thrown accessing system version properties"

    invoke-virtual {p1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    :try_start_1
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarNames:[Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->checkPathForJars(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "foundclasses.java.class.path"

    invoke-virtual {p1, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarNames:[Ljava/lang/String;

    invoke-virtual {p0, v3, v1}, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->checkPathForJars(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v3, "foundclasses.sun.boot.class.path"

    invoke-virtual {p1, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarNames:[Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->checkPathForJars(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v0, "foundclasses.java.ext.dirs"

    invoke-virtual {p1, v0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string p0, "WARNING: SecurityException thrown accessing system classpath properties"

    invoke-virtual {p1, v2, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method

.method public getApparentVersion(Ljava/lang/String;J)Ljava/lang/String;
    .locals 1

    sget-object p0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p0

    :cond_0
    const-string p0, "xerces.jar"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    const-string p2, "present-unknown-version"

    const-string p3, " "

    if-nez p0, :cond_2

    const-string p0, "xercesImpl.jar"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "WARNING."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEnvironmentHash()Ljava/util/Hashtable;
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->checkJAXPVersion(Ljava/util/Hashtable;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->checkProcessorVersion(Ljava/util/Hashtable;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->checkParserVersion(Ljava/util/Hashtable;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->checkAntVersion(Ljava/util/Hashtable;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->checkDOMVersion(Ljava/util/Hashtable;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->checkSAXVersion(Ljava/util/Hashtable;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->checkSystemProperties(Ljava/util/Hashtable;)V

    return-object v0
.end method

.method public logFoundJars(Ljava/util/Vector;Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#---- BEGIN Listing XML-related jars in: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ----"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    :try_start_0
    const-string v7, "ERROR."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v1, v2

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reading-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "= threw: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    move v1, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#----- END Listing XML-related jars in: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " -----"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    return v1

    :cond_4
    :goto_2
    return v0
.end method

.method public logMsg(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->outWriter:Ljava/io/PrintWriter;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public writeEnvironmentReport(Ljava/util/Hashtable;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "# ERROR: writeEnvironmentReport called with null Hashtable"

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    return v0

    :cond_0
    const-string v1, "#---- BEGIN writeEnvironmentReport($Revision: 1.5 $): Useful stuff found: ----"

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    :try_start_0
    const-string v4, "foundclasses."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Vector;

    invoke-virtual {p0, v4, v3}, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->logFoundJars(Ljava/util/Vector;Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const-string v4, "ERROR."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reading-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "= threw: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "#----- END writeEnvironmentReport: Useful properties found: -----"

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    return v0
.end method
