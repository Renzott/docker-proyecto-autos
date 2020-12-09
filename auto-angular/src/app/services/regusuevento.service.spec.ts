import { TestBed } from '@angular/core/testing';

import { RegusueventoService } from './regusuevento.service';

describe('RegusueventoService', () => {
  let service: RegusueventoService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(RegusueventoService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
