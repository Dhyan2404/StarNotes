.class public Lcom/twelvemonkeys/imageio/color/ICCProfileSanitizer$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/imageio/color/ICCProfileSanitizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/twelvemonkeys/imageio/color/ICCProfileSanitizer;
    .locals 4

    const-string v0, "sun.java2d.cmm"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sun.java2d.cmm.kcms.KcmsServiceProvider"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "sun.java2d.cmm.kcms.CMM"

    if-eqz v1, :cond_0

    invoke-static {v2}, Lcom/twelvemonkeys/lang/SystemUtil;->isClassAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sunia/HTREnginev2/yri;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/yri;-><init>()V

    goto :goto_1

    :cond_0
    const-string v1, "sun.java2d.cmm.lcms.LcmsServiceProvider"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "sun.java2d.cmm.lcms.LCMS"

    invoke-static {v0}, Lcom/twelvemonkeys/lang/SystemUtil;->isClassAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sunia/HTREnginev2/lui;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/lui;-><init>()V

    goto :goto_1

    :cond_1
    const-string v0, "java.util.stream.Stream"

    invoke-static {v0}, Lcom/twelvemonkeys/lang/SystemUtil;->isClassAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "java.lang.invoke.CallSite"

    invoke-static {v0}, Lcom/twelvemonkeys/lang/SystemUtil;->isClassAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v2}, Lcom/twelvemonkeys/lang/SystemUtil;->isClassAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/sunia/HTREnginev2/yri;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/yri;-><init>()V

    goto :goto_1

    :cond_3
    :goto_0
    new-instance v0, Lcom/sunia/HTREnginev2/lui;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/lui;-><init>()V

    :goto_1
    sget-boolean v1, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->a:Z

    if-eqz v1, :cond_4

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ICC ProfileCleaner instance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    return-object v0
.end method
