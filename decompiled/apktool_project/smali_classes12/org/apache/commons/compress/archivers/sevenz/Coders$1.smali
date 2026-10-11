.class final Lorg/apache/commons/compress/archivers/sevenz/Coders$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/sevenz/Coders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;",
        "Lcom/sunia/HTREnginev2/swd;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x171aa946550cb623L


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->COPY:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$c;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/sevenz/Coders$c;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->LZMA:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-instance v1, Lcom/sunia/HTREnginev2/pui;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/pui;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->LZMA2:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-instance v1, Lcom/sunia/HTREnginev2/oui;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/oui;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->DEFLATE:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$e;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/sevenz/Coders$e;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->DEFLATE64:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$d;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/sevenz/Coders$d;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BZIP2:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$b;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/sevenz/Coders$b;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->AES256SHA256:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-instance v1, Lcom/sunia/HTREnginev2/w1;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/w1;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_X86_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$a;

    new-instance v2, Lorg/tukaani/xz/X86Options;

    invoke-direct {v2}, Lorg/tukaani/xz/X86Options;-><init>()V

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/Coders$a;-><init>(Lorg/tukaani/xz/FilterOptions;)V

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_PPC_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$a;

    new-instance v2, Lorg/tukaani/xz/PowerPCOptions;

    invoke-direct {v2}, Lorg/tukaani/xz/PowerPCOptions;-><init>()V

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/Coders$a;-><init>(Lorg/tukaani/xz/FilterOptions;)V

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_IA64_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$a;

    new-instance v2, Lorg/tukaani/xz/IA64Options;

    invoke-direct {v2}, Lorg/tukaani/xz/IA64Options;-><init>()V

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/Coders$a;-><init>(Lorg/tukaani/xz/FilterOptions;)V

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_ARM_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$a;

    new-instance v2, Lorg/tukaani/xz/ARMOptions;

    invoke-direct {v2}, Lorg/tukaani/xz/ARMOptions;-><init>()V

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/Coders$a;-><init>(Lorg/tukaani/xz/FilterOptions;)V

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_ARM_THUMB_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$a;

    new-instance v2, Lorg/tukaani/xz/ARMThumbOptions;

    invoke-direct {v2}, Lorg/tukaani/xz/ARMThumbOptions;-><init>()V

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/Coders$a;-><init>(Lorg/tukaani/xz/FilterOptions;)V

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_SPARC_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$a;

    new-instance v2, Lorg/tukaani/xz/SPARCOptions;

    invoke-direct {v2}, Lorg/tukaani/xz/SPARCOptions;-><init>()V

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/Coders$a;-><init>(Lorg/tukaani/xz/FilterOptions;)V

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->DELTA_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-instance v1, Lcom/sunia/HTREnginev2/x3f;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/x3f;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
