.class Lcom/sun/org/apache/xml/internal/utils/SecuritySupport12$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/org/apache/xml/internal/utils/SecuritySupport12;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/xml/internal/utils/SecuritySupport12;

.field final synthetic val$propName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/utils/SecuritySupport12;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/SecuritySupport12$4;->this$0:Lcom/sun/org/apache/xml/internal/utils/SecuritySupport12;

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/utils/SecuritySupport12$4;->val$propName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/SecuritySupport12$4;->val$propName:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
