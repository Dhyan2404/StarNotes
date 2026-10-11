package com.onyx.android.sdk.universal.docmanager.action;

import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import io.reactivex.rxjava3.subjects.PublishSubject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public /* synthetic */ class DocConvertLocalAction$convertToPDF$convertToPDFRequest$1 extends FunctionReferenceImpl implements Function1<ProgressInfo, Unit> {
    public DocConvertLocalAction$convertToPDF$convertToPDFRequest$1(Object obj) {
        super(1, obj, PublishSubject.class, "onNext", "onNext(Ljava/lang/Object;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(ProgressInfo progressInfo) {
        invoke2(progressInfo);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(ProgressInfo progressInfo) {
        ((PublishSubject) this.receiver).onNext(progressInfo);
    }
}
