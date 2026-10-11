.class public Lorg/apache/poi/hemf/record/emf/HemfComment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataUnicode;,
        Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataWMF;,
        Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;,
        Lorg/apache/poi/hemf/record/emf/HemfComment$EmfFormatSignature;,
        Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataMultiformats;,
        Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataEndGroup;,
        Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataBeginGroup;,
        Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataPlus;,
        Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataGeneric;,
        Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataIterator;,
        Lorg/apache/poi/hemf/record/emf/HemfComment$EmfComment;,
        Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentData;,
        Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final LOG:Lorg/apache/logging/log4j/Logger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hemf/record/emf/HemfComment;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emf/HemfComment;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$300()Lorg/apache/logging/log4j/Logger;
    .locals 1

    sget-object v0, Lorg/apache/poi/hemf/record/emf/HemfComment;->LOG:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method
