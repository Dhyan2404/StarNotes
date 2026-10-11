.class public Lcom/sunia/authlib/nativelibs/AuthNativeLib;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getAddr(Landroid/content/Context;I)Ljava/lang/String;
.end method

.method public static native getErrorMsg(I)Ljava/lang/String;
.end method

.method public static native getSdkVersion()Ljava/lang/String;
.end method

.method public static native getSerialNo()Ljava/lang/String;
.end method

.method public static native getUserId()Ljava/lang/String;
.end method

.method public static native release()V
.end method

.method public static native setAppContext(Landroid/content/Context;)V
.end method

.method public static native setEnableLog(ZLjava/lang/String;)V
.end method
