package org.apache.xmlbeans.impl.p119xb.ltgfmt.impl;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.p119xb.ltgfmt.TestCase;
import org.apache.xmlbeans.impl.p119xb.ltgfmt.TestsDocument;
import org.apache.xmlbeans.impl.p119xb.ltgfmt.impl.TestsDocumentImpl;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes13.dex */
public class TestsDocumentImpl extends XmlComplexContentImpl implements TestsDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://www.bea.com/2003/05/xmlbean/ltgfmt", "tests")};
    private static final long serialVersionUID = 1;

    /* loaded from: classes13.dex */
    public static class TestsImpl extends XmlComplexContentImpl implements TestsDocument.Tests {
        private static final QName[] PROPERTY_QNAME = {new QName("http://www.bea.com/2003/05/xmlbean/ltgfmt", Constants.ATTRNAME_TEST)};
        private static final long serialVersionUID = 1;

        public TestsImpl(SchemaType schemaType) {
            super(schemaType);
        }

        @Override // org.apache.xmlbeans.impl.xb.ltgfmt.TestsDocument.Tests
        public TestCase addNewTest() {
            TestCase testCase;
            synchronized (monitor()) {
                check_orphaned();
                testCase = (TestCase) get_store().add_element_user(PROPERTY_QNAME[0]);
            }
            return testCase;
        }

        @Override // org.apache.xmlbeans.impl.xb.ltgfmt.TestsDocument.Tests
        public TestCase[] getTestArray() {
            return (TestCase[]) getXmlObjectArray(PROPERTY_QNAME[0], new TestCase[0]);
        }

        @Override // org.apache.xmlbeans.impl.xb.ltgfmt.TestsDocument.Tests
        public List<TestCase> getTestList() {
            JavaListXmlObject javaListXmlObject;
            synchronized (monitor()) {
                check_orphaned();
                javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.gbn
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return TestsDocumentImpl.TestsImpl.this.getTestArray(((Integer) obj).intValue());
                    }
                }, new BiConsumer() { // from class: com.sunia.HTREnginev2.hbn
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        TestsDocumentImpl.TestsImpl.this.setTestArray(((Integer) obj).intValue(), (TestCase) obj2);
                    }
                }, new Function() { // from class: com.sunia.HTREnginev2.ibn
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return TestsDocumentImpl.TestsImpl.this.insertNewTest(((Integer) obj).intValue());
                    }
                }, new Consumer() { // from class: com.sunia.HTREnginev2.jbn
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        TestsDocumentImpl.TestsImpl.this.removeTest(((Integer) obj).intValue());
                    }
                }, new Supplier() { // from class: com.sunia.HTREnginev2.kbn
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return Integer.valueOf(TestsDocumentImpl.TestsImpl.this.sizeOfTestArray());
                    }
                });
            }
            return javaListXmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.ltgfmt.TestsDocument.Tests
        public TestCase insertNewTest(int i) {
            TestCase testCase;
            synchronized (monitor()) {
                check_orphaned();
                testCase = (TestCase) get_store().insert_element_user(PROPERTY_QNAME[0], i);
            }
            return testCase;
        }

        @Override // org.apache.xmlbeans.impl.xb.ltgfmt.TestsDocument.Tests
        public void removeTest(int i) {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_element(PROPERTY_QNAME[0], i);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.ltgfmt.TestsDocument.Tests
        public void setTestArray(TestCase[] testCaseArr) {
            check_orphaned();
            arraySetterHelper(testCaseArr, PROPERTY_QNAME[0]);
        }

        @Override // org.apache.xmlbeans.impl.xb.ltgfmt.TestsDocument.Tests
        public int sizeOfTestArray() {
            int count_elements;
            synchronized (monitor()) {
                check_orphaned();
                count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
            }
            return count_elements;
        }

        @Override // org.apache.xmlbeans.impl.xb.ltgfmt.TestsDocument.Tests
        public TestCase getTestArray(int i) {
            TestCase testCase;
            synchronized (monitor()) {
                check_orphaned();
                testCase = (TestCase) get_store().find_element_user(PROPERTY_QNAME[0], i);
                if (testCase == null) {
                    throw new IndexOutOfBoundsException();
                }
            }
            return testCase;
        }

        @Override // org.apache.xmlbeans.impl.xb.ltgfmt.TestsDocument.Tests
        public void setTestArray(int i, TestCase testCase) {
            generatedSetterHelperImpl(testCase, PROPERTY_QNAME[0], i, (short) 2);
        }
    }

    public TestsDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.ltgfmt.TestsDocument
    public TestsDocument.Tests addNewTests() {
        TestsDocument.Tests tests;
        synchronized (monitor()) {
            check_orphaned();
            tests = (TestsDocument.Tests) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return tests;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.ltgfmt.TestsDocument
    public TestsDocument.Tests getTests() {
        TestsDocument.Tests tests;
        synchronized (monitor()) {
            check_orphaned();
            tests = (TestsDocument.Tests) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (tests == null) {
                tests = null;
            }
        }
        return tests;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.ltgfmt.TestsDocument
    public void setTests(TestsDocument.Tests tests) {
        generatedSetterHelperImpl(tests, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
