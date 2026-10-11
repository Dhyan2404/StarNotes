.class public Lorg/apache/commons/lang3/arch/Processor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/arch/Processor$Type;,
        Lorg/apache/commons/lang3/arch/Processor$Arch;
    }
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/lang3/arch/Processor$Arch;

.field public final b:Lorg/apache/commons/lang3/arch/Processor$Type;


# direct methods
.method public constructor <init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/arch/Processor;->a:Lorg/apache/commons/lang3/arch/Processor$Arch;

    iput-object p2, p0, Lorg/apache/commons/lang3/arch/Processor;->b:Lorg/apache/commons/lang3/arch/Processor$Type;

    return-void
.end method


# virtual methods
.method public getArch()Lorg/apache/commons/lang3/arch/Processor$Arch;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/lang3/arch/Processor;->a:Lorg/apache/commons/lang3/arch/Processor$Arch;

    return-object p0
.end method

.method public getType()Lorg/apache/commons/lang3/arch/Processor$Type;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/lang3/arch/Processor;->b:Lorg/apache/commons/lang3/arch/Processor$Type;

    return-object p0
.end method

.method public is32Bit()Z
    .locals 1

    sget-object v0, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_32:Lorg/apache/commons/lang3/arch/Processor$Arch;

    iget-object p0, p0, Lorg/apache/commons/lang3/arch/Processor;->a:Lorg/apache/commons/lang3/arch/Processor$Arch;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public is64Bit()Z
    .locals 1

    sget-object v0, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_64:Lorg/apache/commons/lang3/arch/Processor$Arch;

    iget-object p0, p0, Lorg/apache/commons/lang3/arch/Processor;->a:Lorg/apache/commons/lang3/arch/Processor$Arch;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isIA64()Z
    .locals 1

    sget-object v0, Lorg/apache/commons/lang3/arch/Processor$Type;->IA_64:Lorg/apache/commons/lang3/arch/Processor$Type;

    iget-object p0, p0, Lorg/apache/commons/lang3/arch/Processor;->b:Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isPPC()Z
    .locals 1

    sget-object v0, Lorg/apache/commons/lang3/arch/Processor$Type;->PPC:Lorg/apache/commons/lang3/arch/Processor$Type;

    iget-object p0, p0, Lorg/apache/commons/lang3/arch/Processor;->b:Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isX86()Z
    .locals 1

    sget-object v0, Lorg/apache/commons/lang3/arch/Processor$Type;->X86:Lorg/apache/commons/lang3/arch/Processor$Type;

    iget-object p0, p0, Lorg/apache/commons/lang3/arch/Processor;->b:Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
