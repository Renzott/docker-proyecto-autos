import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { RegusuarioeventoComponent } from './regusuarioevento.component';

describe('RegusuarioeventoComponent', () => {
  let component: RegusuarioeventoComponent;
  let fixture: ComponentFixture<RegusuarioeventoComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ RegusuarioeventoComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(RegusuarioeventoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
